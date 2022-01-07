
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fc_port {scalar_t__ chip_reset; int fw_login_state; scalar_t__ logo_ack_needed; scalar_t__ logout_on_delete; TYPE_3__* vha; } ;
struct TYPE_6__ {TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* base_qpair; } ;
struct TYPE_4__ {scalar_t__ chip_reset; } ;


 int DSC_LS_PORT_UNAVAIL ;

__attribute__((used)) static void qla24xx_chk_fcp_state(struct fc_port *sess)
{
 if (sess->chip_reset != sess->vha->hw->base_qpair->chip_reset) {
  sess->logout_on_delete = 0;
  sess->logo_ack_needed = 0;
  sess->fw_login_state = DSC_LS_PORT_UNAVAIL;
 }
}
