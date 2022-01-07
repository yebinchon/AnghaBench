
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {scalar_t__ unit; size_t port; } ;


 int* checked ;
 int* empty ;
 int fullscan ;
 int maple_attach_driver (struct maple_device*) ;
 int maple_map_subunits (struct maple_device*,char) ;
 int scanning ;
 int started ;
 char* subdevice_map ;

__attribute__((used)) static void maple_response_devinfo(struct maple_device *mdev,
       char *recvbuf)
{
 char submask;
 if (!started || (scanning == 2) || !fullscan) {
  if ((mdev->unit == 0) && (checked[mdev->port] == 0)) {
   checked[mdev->port] = 1;
   maple_attach_driver(mdev);
  } else {
   if (mdev->unit != 0)
    maple_attach_driver(mdev);
   if (mdev->unit == 0) {
    empty[mdev->port] = 0;
    maple_attach_driver(mdev);
   }
  }
 }
 if (mdev->unit == 0) {
  submask = recvbuf[2] & 0x1F;
  if (submask ^ subdevice_map[mdev->port]) {
   maple_map_subunits(mdev, submask);
   subdevice_map[mdev->port] = submask;
  }
 }
}
