
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ block; int state; } ;


 int DASD_STATE_NEW ;
 int dasd_eer_disable (struct dasd_device*) ;
 int dasd_free_queue (scalar_t__) ;
 int dasd_put_device (struct dasd_device*) ;

__attribute__((used)) static int dasd_state_known_to_new(struct dasd_device *device)
{

 dasd_eer_disable(device);
 device->state = DASD_STATE_NEW;

 if (device->block)
  dasd_free_queue(device->block);


 dasd_put_device(device);
 return 0;
}
