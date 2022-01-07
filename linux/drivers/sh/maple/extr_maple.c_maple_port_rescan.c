
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int dummy; } ;


 int MAPLE_COMMAND_DEVINFO ;
 int MAPLE_PORTS ;
 struct maple_device** baseunits ;
 int* checked ;
 int fullscan ;
 int maple_add_packet (struct maple_device*,int ,int ,int ,int *) ;

__attribute__((used)) static void maple_port_rescan(void)
{
 int i;
 struct maple_device *mdev;

 fullscan = 1;
 for (i = 0; i < MAPLE_PORTS; i++) {
  if (checked[i] == 0) {
   fullscan = 0;
   mdev = baseunits[i];
   maple_add_packet(mdev, 0, MAPLE_COMMAND_DEVINFO,
    0, ((void*)0));
  }
 }
}
