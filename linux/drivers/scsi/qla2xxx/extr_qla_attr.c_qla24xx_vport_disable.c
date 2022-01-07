
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {int * dd_data; } ;
typedef int scsi_qla_host_t ;


 int qla24xx_disable_vp (int *) ;
 int qla24xx_enable_vp (int *) ;

__attribute__((used)) static int
qla24xx_vport_disable(struct fc_vport *fc_vport, bool disable)
{
 scsi_qla_host_t *vha = fc_vport->dd_data;

 if (disable)
  qla24xx_disable_vp(vha);
 else
  qla24xx_enable_vp(vha);

 return 0;
}
