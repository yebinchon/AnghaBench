
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esas2r_sg_context {int * cur_offset; int length; } ;
struct esas2r_request {struct esas2r_flash_context* interrupt_cx; int req_stat; } ;
struct esas2r_flash_img {int fi_version; int action; int length; struct esas2r_component_header* cmp_hdr; int num_comps; struct esas2r_sg_context* rel_version; int flags; int adap_typ; int checksum; int status; int scratch_buf; } ;
struct esas2r_flash_context {int fi_hdr_len; size_t comp_typ; int num_comps; int interrupt_cb; struct esas2r_sg_context sgc; int flsh_addr; int func; int task; int scratch; int * sgc_offset; struct esas2r_flash_img* fi; } ;
struct esas2r_component_header {int version; int status; int * pad; int image_offset; int length; int img_type; } ;
struct esas2r_adapter {int flash_ver; struct esas2r_sg_context* image_type; int flags; struct esas2r_flash_context flash_context; } ;


 int AF_DEGRADED_MODE ;
 int AF_FLASH_LOCK ;
 size_t CH_IT_BIOS ;
 size_t CH_IT_CFG ;
 size_t CH_IT_EFI ;
 size_t CH_IT_MAC ;
 int CH_STAT_PENDING ;
 int CH_STAT_SUCCESS ;



 int FI_NUM_COMPS_V1 ;
 int FI_STAT_BUSY ;
 int FI_STAT_DEGRADED ;
 int FI_STAT_FAILED ;
 int FI_STAT_IMG_VER ;
 int FI_STAT_INVALID ;
 int FI_STAT_SUCCESS ;

 int FLS_LENGTH_BOOT ;
 int FLS_OFFSET_BOOT ;
 int FMTSK_ERASE_BOOT ;
 int RS_SUCCESS ;
 int VDA_FLASH_BEGINW ;
 int calc_fi_checksum (struct esas2r_flash_context*) ;
 int complete_fmapi_req (struct esas2r_adapter*,struct esas2r_request*,int ) ;
 int esas2r_disable_heartbeat (struct esas2r_adapter*) ;
 int esas2r_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int fix_bios (struct esas2r_adapter*,struct esas2r_flash_img*) ;
 int fix_efi (struct esas2r_adapter*,struct esas2r_flash_img*) ;
 int fw_download_proc ;
 int get_fi_adap_type (struct esas2r_adapter*) ;
 int load_image (struct esas2r_adapter*,struct esas2r_request*) ;
 int memcpy (struct esas2r_sg_context*,struct esas2r_sg_context*,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int verify_fi (struct esas2r_adapter*,struct esas2r_flash_context*) ;

bool esas2r_fm_api(struct esas2r_adapter *a, struct esas2r_flash_img *fi,
     struct esas2r_request *rq, struct esas2r_sg_context *sgc)
{
 struct esas2r_flash_context *fc = &a->flash_context;
 u8 j;
 struct esas2r_component_header *ch;

 if (test_and_set_bit(AF_FLASH_LOCK, &a->flags)) {

  fi->status = FI_STAT_BUSY;
  return 0;
 }

 memcpy(&fc->sgc, sgc, sizeof(struct esas2r_sg_context));
 sgc = &fc->sgc;
 fc->fi = fi;
 fc->sgc_offset = sgc->cur_offset;
 rq->req_stat = RS_SUCCESS;
 rq->interrupt_cx = fc;

 switch (fi->fi_version) {
 case 128:
  fc->scratch = ((struct esas2r_flash_img *)fi)->scratch_buf;
  fc->num_comps = FI_NUM_COMPS_V1;
  fc->fi_hdr_len = sizeof(struct esas2r_flash_img);
  break;

 default:
  return complete_fmapi_req(a, rq, FI_STAT_IMG_VER);
 }

 if (test_bit(AF_DEGRADED_MODE, &a->flags))
  return complete_fmapi_req(a, rq, FI_STAT_DEGRADED);

 switch (fi->action) {
 case 131:

  if (!verify_fi(a, fc))
   return complete_fmapi_req(a, rq, fi->status);


  ch = &fi->cmp_hdr[CH_IT_BIOS];

  if (ch->length)
   fix_bios(a, fi);


  ch = &fi->cmp_hdr[CH_IT_EFI];

  if (ch->length)
   fix_efi(a, fi);






  fi->checksum = calc_fi_checksum(fc);


  esas2r_disable_heartbeat(a);


  fc->task = FMTSK_ERASE_BOOT;
  fc->func = VDA_FLASH_BEGINW;
  fc->comp_typ = CH_IT_CFG;
  fc->flsh_addr = FLS_OFFSET_BOOT;
  fc->sgc.length = FLS_LENGTH_BOOT;
  fc->sgc.cur_offset = ((void*)0);


  fc->interrupt_cb = fw_download_proc;
  break;

 case 129:
  fi->adap_typ = get_fi_adap_type(a);
  fi->flags = 0;
  fi->num_comps = fc->num_comps;
  fi->length = fc->fi_hdr_len;


  memcpy(fi->rel_version, a->image_type,
         sizeof(fi->rel_version));


  for (j = 0, ch = fi->cmp_hdr;
       j < fi->num_comps;
       j++, ch++) {
   ch->img_type = j;
   ch->status = CH_STAT_PENDING;
   ch->length = 0;
   ch->version = 0xffffffff;
   ch->image_offset = 0;
   ch->pad[0] = 0;
   ch->pad[1] = 0;
  }

  if (a->flash_ver != 0) {
   fi->cmp_hdr[CH_IT_BIOS].version =
    fi->cmp_hdr[CH_IT_MAC].version =
     fi->cmp_hdr[CH_IT_EFI].version =
      fi->cmp_hdr[CH_IT_CFG].version
       = a->flash_ver;

   fi->cmp_hdr[CH_IT_BIOS].status =
    fi->cmp_hdr[CH_IT_MAC].status =
     fi->cmp_hdr[CH_IT_EFI].status =
      fi->cmp_hdr[CH_IT_CFG].status =
       CH_STAT_SUCCESS;

   return complete_fmapi_req(a, rq, FI_STAT_SUCCESS);
  }



 case 130:
 default:
  return complete_fmapi_req(a, rq, FI_STAT_INVALID);
 }







 if (!load_image(a, rq))
  return complete_fmapi_req(a, rq, FI_STAT_FAILED);

 esas2r_start_request(a, rq);

 return 1;
}
