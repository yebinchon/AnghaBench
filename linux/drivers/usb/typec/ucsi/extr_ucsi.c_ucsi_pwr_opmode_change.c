
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwr_op_mode; } ;
struct ucsi_connector {int port; TYPE_1__ status; } ;


 int TYPEC_PWR_MODE_1_5A ;
 int TYPEC_PWR_MODE_3_0A ;
 int TYPEC_PWR_MODE_PD ;
 int TYPEC_PWR_MODE_USB ;



 int typec_set_pwr_opmode (int ,int ) ;

__attribute__((used)) static void ucsi_pwr_opmode_change(struct ucsi_connector *con)
{
 switch (con->status.pwr_op_mode) {
 case 130:
  typec_set_pwr_opmode(con->port, TYPEC_PWR_MODE_PD);
  break;
 case 129:
  typec_set_pwr_opmode(con->port, TYPEC_PWR_MODE_1_5A);
  break;
 case 128:
  typec_set_pwr_opmode(con->port, TYPEC_PWR_MODE_3_0A);
  break;
 default:
  typec_set_pwr_opmode(con->port, TYPEC_PWR_MODE_USB);
  break;
 }
}
