
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct esas2r_flash_img {int length; scalar_t__ adap_typ; scalar_t__ num_comps; scalar_t__ checksum; void* status; struct esas2r_component_header* cmp_hdr; } ;
struct esas2r_flash_context {int fi_hdr_len; struct esas2r_flash_img* fi; } ;
struct esas2r_component_header {scalar_t__ img_type; int length; void* status; int image_offset; } ;
struct esas2r_adapter {int dummy; } ;
 void* CH_STAT_INVALID ;
 void* CH_STAT_PENDING ;
 scalar_t__ CODE_TYPE_EFI ;
 scalar_t__ CODE_TYPE_OPEN ;
 scalar_t__ CODE_TYPE_PC ;
 scalar_t__ FI_AT_UNKNWN ;
 void* FI_STAT_ADAPTYP ;
 void* FI_STAT_CHKSUM ;
 void* FI_STAT_LENGTH ;
 void* FI_STAT_MISSING ;
 void* FI_STAT_UNKNOWN ;
 scalar_t__ calc_fi_checksum (struct esas2r_flash_context*) ;
 scalar_t__ chk_boot (scalar_t__*,scalar_t__) ;
 int chk_cfg (scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ get_fi_adap_type (struct esas2r_adapter*) ;

__attribute__((used)) static bool verify_fi(struct esas2r_adapter *a,
        struct esas2r_flash_context *fc)
{
 struct esas2r_flash_img *fi = fc->fi;
 u8 type;
 bool imgerr;
 u16 i;
 u32 len;
 struct esas2r_component_header *ch;


 len = fi->length;

 if ((len & 1)
     || len < fc->fi_hdr_len) {
  fi->status = FI_STAT_LENGTH;
  return 0;
 }


 type = get_fi_adap_type(a);
 if ((type == FI_AT_UNKNWN) || (fi->adap_typ != type)) {
  fi->status = FI_STAT_ADAPTYP;
  return 0;
 }






 imgerr = 0;

 for (i = 0, len = 0, ch = fi->cmp_hdr;
      i < fi->num_comps;
      i++, ch++) {
  bool cmperr = 0;





  if (i != ch->img_type) {
   imgerr = 1;
   ch->status = CH_STAT_INVALID;
   continue;
  }

  switch (ch->img_type) {
  case 133:
   type = CODE_TYPE_PC;
   break;

  case 129:
   type = CODE_TYPE_OPEN;
   break;

  case 131:
   type = CODE_TYPE_EFI;
   break;
  }

  switch (ch->img_type) {
  case 130:
  case 128:
   break;

  case 133:
  case 129:
  case 131:
   if (ch->length & 0x1ff)
    cmperr = 1;


   if (ch->length == 0)
    break;


   if (chk_boot((u8 *)fi + ch->image_offset, ch->length)
       != type)
    cmperr = 1;

   break;

  case 132:


   if (ch->length == 0) {
    cmperr = 1;
    break;
   }


   if (!chk_cfg((u8 *)fi + ch->image_offset + ch->length,
         ch->length, ((void*)0)))
    cmperr = 1;

   break;

  default:

   fi->status = FI_STAT_UNKNOWN;
   return 0;
  }

  if (cmperr) {
   imgerr = 1;
   ch->status = CH_STAT_INVALID;
  } else {
   ch->status = CH_STAT_PENDING;
   len += ch->length;
  }
 }

 if (imgerr) {
  fi->status = FI_STAT_MISSING;
  return 0;
 }


 if (len != fi->length - fc->fi_hdr_len) {
  fi->status = FI_STAT_LENGTH;
  return 0;
 }


 if (fi->checksum != calc_fi_checksum(fc)) {
  fi->status = FI_STAT_CHKSUM;
  return 0;
 }

 return 1;
}
