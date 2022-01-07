
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_port {int se_sess; } ;


 int target_sess_cmd_list_set_waiting (int ) ;

__attribute__((used)) static void tcm_qla2xxx_shutdown_sess(struct fc_port *sess)
{
 target_sess_cmd_list_set_waiting(sess->se_sess);
}
