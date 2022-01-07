
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ handle; } ;
union atto_vda_req {TYPE_1__ scsi; } ;
struct esas2r_request {union atto_vda_req* vrq; struct esas2r_mem_desc* vrq_md; } ;
struct esas2r_mem_desc {scalar_t__ virt_addr; int next_desc; scalar_t__ size; } ;
struct esas2r_adapter {scalar_t__ num_vrqs; int vrq_mds_head; } ;


 scalar_t__ ESAS2R_DATA_BUF_LEN ;
 int GFP_KERNEL ;
 int esas2r_hdebug (char*) ;
 int esas2r_initmem_alloc (struct esas2r_adapter*,struct esas2r_mem_desc*,int) ;
 int kfree (struct esas2r_mem_desc*) ;
 struct esas2r_mem_desc* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static bool alloc_vda_req(struct esas2r_adapter *a,
     struct esas2r_request *rq)
{
 struct esas2r_mem_desc *memdesc = kzalloc(
  sizeof(struct esas2r_mem_desc), GFP_KERNEL);

 if (memdesc == ((void*)0)) {
  esas2r_hdebug("could not alloc mem for vda request memdesc\n");
  return 0;
 }

 memdesc->size = sizeof(union atto_vda_req) +
   ESAS2R_DATA_BUF_LEN;

 if (!esas2r_initmem_alloc(a, memdesc, 256)) {
  esas2r_hdebug("could not alloc mem for vda request\n");
  kfree(memdesc);
  return 0;
 }

 a->num_vrqs++;
 list_add(&memdesc->next_desc, &a->vrq_mds_head);

 rq->vrq_md = memdesc;
 rq->vrq = (union atto_vda_req *)memdesc->virt_addr;
 rq->vrq->scsi.handle = a->num_vrqs;

 return 1;
}
