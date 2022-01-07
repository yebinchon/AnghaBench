
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u8 ;
struct bfa_fcs_rport_s {int dummy; } ;
struct TYPE_6__ {TYPE_1__* fcs; } ;
typedef TYPE_2__ bfa_fcs_lport_t ;
struct TYPE_5__ {int bfa; } ;


 int BFA_PREBOOT_BOOTLUN_MAX ;
 int WARN_ON (int) ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_create_by_wwn (TYPE_2__*,int ) ;
 int bfa_iocfc_get_bootwwns (int ,int*,int *) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_boot_target_disc(bfa_fcs_lport_t *port)
{

 struct bfa_fcs_rport_s *rport;
 u8 nwwns;
 wwn_t wwns[BFA_PREBOOT_BOOTLUN_MAX];
 int ii;

 bfa_iocfc_get_bootwwns(port->fcs->bfa, &nwwns, wwns);

 for (ii = 0 ; ii < nwwns; ++ii) {
  rport = bfa_fcs_rport_create_by_wwn(port, wwns[ii]);
  WARN_ON(!rport);
 }
}
