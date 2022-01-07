
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_port {int sess_kref; } ;


 int kref_put (int *,int ) ;
 int tcm_qla2xxx_release_session ;

__attribute__((used)) static void tcm_qla2xxx_put_sess(struct fc_port *sess)
{
 if (!sess)
  return;

 kref_put(&sess->sess_kref, tcm_qla2xxx_release_session);
}
