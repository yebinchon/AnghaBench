
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcs_rport_s {TYPE_4__* fcs; int pwwn; TYPE_5__* port; int pid; } ;
struct bfa_fcs_itnim_s {TYPE_7__* fcs; struct bfa_fcs_rport_s* rport; } ;
struct TYPE_9__ {int rpwwn; void* lpwwn; void* ppwwn; int vf_id; } ;
struct TYPE_10__ {TYPE_2__ itnim; } ;
struct bfa_aen_entry_s {TYPE_3__ aen_data; } ;
typedef enum bfa_itnim_aen_event { ____Placeholder_bfa_itnim_aen_event } bfa_itnim_aen_event ;
struct TYPE_13__ {scalar_t__ bfad; } ;
struct TYPE_12__ {TYPE_1__* fabric; } ;
struct TYPE_11__ {int fcs_aen_seq; } ;
struct TYPE_8__ {int vf_id; } ;


 int BFA_AEN_CAT_ITNIM ;
 scalar_t__ BFA_FCS_PID_IS_WKA (int ) ;
 TYPE_5__* bfa_fcs_get_base_port (TYPE_7__*) ;
 void* bfa_fcs_lport_get_pwwn (TYPE_5__*) ;
 int bfad_get_aen_entry (struct bfad_s*,struct bfa_aen_entry_s*) ;
 int bfad_im_post_vendor_event (struct bfa_aen_entry_s*,struct bfad_s*,int ,int ,int) ;

__attribute__((used)) static void
bfa_fcs_itnim_aen_post(struct bfa_fcs_itnim_s *itnim,
   enum bfa_itnim_aen_event event)
{
 struct bfa_fcs_rport_s *rport = itnim->rport;
 struct bfad_s *bfad = (struct bfad_s *)itnim->fcs->bfad;
 struct bfa_aen_entry_s *aen_entry;


 if (BFA_FCS_PID_IS_WKA(rport->pid))
  return;

 bfad_get_aen_entry(bfad, aen_entry);
 if (!aen_entry)
  return;

 aen_entry->aen_data.itnim.vf_id = rport->port->fabric->vf_id;
 aen_entry->aen_data.itnim.ppwwn = bfa_fcs_lport_get_pwwn(
     bfa_fcs_get_base_port(itnim->fcs));
 aen_entry->aen_data.itnim.lpwwn = bfa_fcs_lport_get_pwwn(rport->port);
 aen_entry->aen_data.itnim.rpwwn = rport->pwwn;


 bfad_im_post_vendor_event(aen_entry, bfad, ++rport->fcs->fcs_aen_seq,
      BFA_AEN_CAT_ITNIM, event);
}
