
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union viosrp_iu {int dummy; } viosrp_iu ;
struct vio_dev {int dummy; } ;


 int IBMVSCSI_CMDS_PER_LUN_DEFAULT ;
 int IBMVSCSI_MAX_SECTORS_DEFAULT ;
 int max_events ;

__attribute__((used)) static unsigned long ibmvscsi_get_desired_dma(struct vio_dev *vdev)
{

 unsigned long desired_io = max_events * sizeof(union viosrp_iu);


 desired_io += (IBMVSCSI_MAX_SECTORS_DEFAULT * 512 *
                      IBMVSCSI_CMDS_PER_LUN_DEFAULT);

 return desired_io;
}
