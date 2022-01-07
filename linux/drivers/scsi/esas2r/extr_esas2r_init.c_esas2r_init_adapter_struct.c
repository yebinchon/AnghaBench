
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union atto_vda_req {int dummy; } atto_vda_req ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_request {int comp_cb; int req_list; } ;
struct esas2r_mem_desc {int size; scalar_t__ virt_addr; int next_desc; } ;
struct esas2r_inbound_list_source_entry {int length; scalar_t__ reserved; scalar_t__ address; } ;
struct esas2r_adapter {int list_size; scalar_t__ volatile* outbound_copy; struct esas2r_request* first_ae_req; struct esas2r_mem_desc inbound_list_md; int flags; int * disc_buffer; struct esas2r_sas_nvram* nvram; struct esas2r_mem_desc outbound_list_md; int free_sg_list_head; struct esas2r_mem_desc* sg_list_mds; int flags2; TYPE_1__* pcid; int * req_table; struct esas2r_request general_req; int * targetdb; int * targetdb_end; int queue_lock; int mem_lock; int sg_list_lock; } ;
struct atto_vda_ob_rsp {int dummy; } ;
struct TYPE_2__ {scalar_t__ subsystem_vendor; int subsystem_device; } ;


 int AF2_SERIAL_FLASH ;
 int AF2_THUNDERBOLT ;
 int AF2_THUNDERLINK ;
 int AF_FIRST_INIT ;
 int AF_NVR_VALID ;
 int ATTO_SSDID_TBT ;
 int ATTO_TLSH_1068 ;
 scalar_t__ ATTO_VENDOR_ID ;
 int ESAS2R_DISC_BUF_LEN ;
 int ESAS2R_LIST_ALIGN ;
 scalar_t__ ESAS2R_LIST_EXTRA ;
 int ESAS2R_LOG_CRIT ;
 size_t ESAS2R_MAX_TARGETS ;
 int ESAS2R_SGL_ALIGN ;
 int GFP_KERNEL ;
 int HWILSE_INTERFACE_F0 ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NUM_SGL_MIN ;
 int * PTR_ALIGN (int *,int) ;
 int alloc_vda_req (struct esas2r_adapter*,struct esas2r_request*) ;
 int cpu_to_le32 (int) ;
 int esas2r_ae_complete ;
 int esas2r_hdebug (char*) ;
 int esas2r_init_pci_cfg_space (struct esas2r_adapter*) ;
 int esas2r_initmem_alloc (struct esas2r_adapter*,struct esas2r_mem_desc*,int ) ;
 int esas2r_log (int ,char*) ;
 int esas2r_nvram_set_defaults (struct esas2r_adapter*) ;
 int esas2r_rq_init_request (struct esas2r_request*,struct esas2r_adapter*) ;
 int esas2r_targ_db_initialize (struct esas2r_adapter*) ;
 void* kcalloc (scalar_t__,int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ num_ae_requests ;
 scalar_t__ num_requests ;
 scalar_t__ num_sg_lists ;
 int sgl_page_size ;
 int spin_lock_init (int *) ;
 scalar_t__ test_bit (int ,int *) ;

bool esas2r_init_adapter_struct(struct esas2r_adapter *a,
    void **uncached_area)
{
 u32 i;
 u8 *high;
 struct esas2r_inbound_list_source_entry *element;
 struct esas2r_request *rq;
 struct esas2r_mem_desc *sgl;

 spin_lock_init(&a->sg_list_lock);
 spin_lock_init(&a->mem_lock);
 spin_lock_init(&a->queue_lock);

 a->targetdb_end = &a->targetdb[ESAS2R_MAX_TARGETS];

 if (!alloc_vda_req(a, &a->general_req)) {
  esas2r_hdebug(
   "failed to allocate a VDA request for the general req!");
  return 0;
 }


 a->first_ae_req =
  kcalloc(num_ae_requests, sizeof(struct esas2r_request),
   GFP_KERNEL);

 if (a->first_ae_req == ((void*)0)) {
  esas2r_log(ESAS2R_LOG_CRIT,
      "failed to allocate memory for asynchronous events");
  return 0;
 }


 a->sg_list_mds = kcalloc(num_sg_lists, sizeof(struct esas2r_mem_desc),
     GFP_KERNEL);

 if (a->sg_list_mds == ((void*)0)) {
  esas2r_log(ESAS2R_LOG_CRIT,
      "failed to allocate memory for s/g list descriptors");
  return 0;
 }


 a->req_table =
  kcalloc(num_requests + num_ae_requests + 1,
   sizeof(struct esas2r_request *),
   GFP_KERNEL);

 if (a->req_table == ((void*)0)) {
  esas2r_log(ESAS2R_LOG_CRIT,
      "failed to allocate memory for the request table");
  return 0;
 }


 esas2r_init_pci_cfg_space(a);





 if ((a->pcid->subsystem_vendor == ATTO_VENDOR_ID)
     && (a->pcid->subsystem_device & ATTO_SSDID_TBT))
  a->flags2 |= AF2_THUNDERBOLT;

 if (test_bit(AF2_THUNDERBOLT, &a->flags2))
  a->flags2 |= AF2_SERIAL_FLASH;

 if (a->pcid->subsystem_device == ATTO_TLSH_1068)
  a->flags2 |= AF2_THUNDERLINK;


 high = (u8 *)*uncached_area;



 for (i = 0, sgl = a->sg_list_mds; i < num_sg_lists; i++, sgl++) {
  sgl->size = sgl_page_size;

  list_add_tail(&sgl->next_desc, &a->free_sg_list_head);

  if (!esas2r_initmem_alloc(a, sgl, ESAS2R_SGL_ALIGN)) {

   if (i < NUM_SGL_MIN)
    return 0;
   break;
  }
 }


 a->list_size = num_requests + ESAS2R_LIST_EXTRA;


 a->inbound_list_md.size = a->list_size *
      sizeof(struct
      esas2r_inbound_list_source_entry);

 if (!esas2r_initmem_alloc(a, &a->inbound_list_md, ESAS2R_LIST_ALIGN)) {
  esas2r_hdebug("failed to allocate IB list");
  return 0;
 }


 a->outbound_list_md.size = a->list_size *
       sizeof(struct atto_vda_ob_rsp);

 if (!esas2r_initmem_alloc(a, &a->outbound_list_md,
      ESAS2R_LIST_ALIGN)) {
  esas2r_hdebug("failed to allocate IB list");
  return 0;
 }


 a->nvram = (struct esas2r_sas_nvram *)high;
 high += sizeof(struct esas2r_sas_nvram);


 a->disc_buffer = high;
 high += ESAS2R_DISC_BUF_LEN;
 high = PTR_ALIGN(high, 8);


 a->outbound_copy = (u32 volatile *)high;
 high += sizeof(u32);

 if (!test_bit(AF_NVR_VALID, &a->flags))
  esas2r_nvram_set_defaults(a);


 *uncached_area = (void *)high;


 if (test_bit(AF_FIRST_INIT, &a->flags)) {
  esas2r_targ_db_initialize(a);


  element =
   (struct esas2r_inbound_list_source_entry *)a->
   inbound_list_md.
   virt_addr;

  for (i = 0; i < a->list_size; i++) {
   element->address = 0;
   element->reserved = 0;
   element->length = cpu_to_le32(HWILSE_INTERFACE_F0
            | (sizeof(union
        atto_vda_req)
        /
        sizeof(u32)));
   element++;
  }


  for (rq = a->first_ae_req, i = 0; i < num_ae_requests; rq++,
       i++) {
   INIT_LIST_HEAD(&rq->req_list);
   if (!alloc_vda_req(a, rq)) {
    esas2r_hdebug(
     "failed to allocate a VDA request!");
    return 0;
   }

   esas2r_rq_init_request(rq, a);


   rq->comp_cb = esas2r_ae_complete;
  }
 }

 return 1;
}
