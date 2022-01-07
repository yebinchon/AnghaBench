
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_ioc_s {int ioc_aen_seq; TYPE_2__* attr; TYPE_1__* bfa; } ;
struct TYPE_7__ {int ioc_type; void* mac; int pwwn; } ;
struct TYPE_8__ {TYPE_3__ ioc; } ;
struct bfa_aen_entry_s {TYPE_4__ aen_data; } ;
typedef enum bfa_ioc_type_e { ____Placeholder_bfa_ioc_type_e } bfa_ioc_type_e ;
typedef enum bfa_ioc_aen_event { ____Placeholder_bfa_ioc_aen_event } bfa_ioc_aen_event ;
struct TYPE_6__ {int pwwn; } ;
struct TYPE_5__ {scalar_t__ bfad; } ;


 int BFA_AEN_CAT_IOC ;



 int WARN_ON (int) ;
 void* bfa_ioc_get_mac (struct bfa_ioc_s*) ;
 int bfa_ioc_get_type (struct bfa_ioc_s*) ;
 int bfad_get_aen_entry (struct bfad_s*,struct bfa_aen_entry_s*) ;
 int bfad_im_post_vendor_event (struct bfa_aen_entry_s*,struct bfad_s*,int ,int ,int) ;

void
bfa_ioc_aen_post(struct bfa_ioc_s *ioc, enum bfa_ioc_aen_event event)
{
 struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;
 struct bfa_aen_entry_s *aen_entry;
 enum bfa_ioc_type_e ioc_type;

 bfad_get_aen_entry(bfad, aen_entry);
 if (!aen_entry)
  return;

 ioc_type = bfa_ioc_get_type(ioc);
 switch (ioc_type) {
 case 130:
  aen_entry->aen_data.ioc.pwwn = ioc->attr->pwwn;
  break;
 case 129:
  aen_entry->aen_data.ioc.pwwn = ioc->attr->pwwn;
  aen_entry->aen_data.ioc.mac = bfa_ioc_get_mac(ioc);
  break;
 case 128:
  aen_entry->aen_data.ioc.mac = bfa_ioc_get_mac(ioc);
  break;
 default:
  WARN_ON(ioc_type != 130);
  break;
 }


 aen_entry->aen_data.ioc.ioc_type = ioc_type;
 bfad_im_post_vendor_event(aen_entry, bfad, ++ioc->ioc_aen_seq,
      BFA_AEN_CAT_IOC, event);
}
