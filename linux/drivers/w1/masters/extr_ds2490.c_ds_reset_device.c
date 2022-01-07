
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_device {int spu_sleep; } ;


 int COMM_IM ;
 int COMM_SET_DURATION ;
 int CTL_RESET_DEVICE ;
 int MOD_PULSE_EN ;
 int PULSE_SPUE ;
 scalar_t__ ds_send_control (struct ds_device*,int,int) ;
 int ds_send_control_cmd (struct ds_device*,int ,int ) ;
 scalar_t__ ds_send_control_mode (struct ds_device*,int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void ds_reset_device(struct ds_device *dev)
{
 ds_send_control_cmd(dev, CTL_RESET_DEVICE, 0);



 if (ds_send_control_mode(dev, MOD_PULSE_EN, PULSE_SPUE))
  pr_err("ds_reset_device: Error allowing strong pullup\n");

 if (dev->spu_sleep) {

  u8 del = dev->spu_sleep>>4;
  if (ds_send_control(dev, COMM_SET_DURATION | COMM_IM, del))
   pr_err("ds_reset_device: Error setting duration\n");
 }
}
