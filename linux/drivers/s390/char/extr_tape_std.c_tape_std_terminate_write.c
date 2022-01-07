
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {scalar_t__ required_tapemarks; int first_minor; } ;


 int DBF_LH (int,char*,int ,scalar_t__) ;
 int MTBSR ;
 int MTWEOF ;
 int tape_mtop (struct tape_device*,int ,int) ;

int
tape_std_terminate_write(struct tape_device *device)
{
 int rc;

 if(device->required_tapemarks == 0)
  return 0;

 DBF_LH(5, "tape%d: terminate write %dxEOF\n", device->first_minor,
  device->required_tapemarks);

 rc = tape_mtop(device, MTWEOF, device->required_tapemarks);
 if (rc)
  return rc;

 device->required_tapemarks = 0;
 return tape_mtop(device, MTBSR, 1);
}
