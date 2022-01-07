
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {int dummy; } ;
struct snic {int shost; } ;


 int SNIC_HOST_INFO (int ,char*) ;
 int svnic_dev_open_done (struct vnic_dev*,int*) ;
 struct snic* svnic_dev_priv (struct vnic_dev*) ;

__attribute__((used)) static int
snic_vdev_open_done(struct vnic_dev *vdev, int *done)
{
 struct snic *snic = svnic_dev_priv(vdev);
 int ret;
 int nretries = 5;

 do {
  ret = svnic_dev_open_done(vdev, done);
  if (ret == 0)
   break;

  SNIC_HOST_INFO(snic->shost, "VNIC_DEV_OPEN Timedout.\n");
 } while (nretries--);

 return ret;
}
