
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
typedef int __u32 ;







 int pr_err (char*,int ) ;
 int usb_speed_string (int) ;
 int valid_port (int *,int *) ;

__attribute__((used)) static int valid_args(__u32 *pdev_nr, __u32 *rhport,
        enum usb_device_speed speed)
{
 if (!valid_port(pdev_nr, rhport)) {
  return 0;
 }

 switch (speed) {
 case 130:
 case 132:
 case 131:
 case 128:
 case 129:
  break;
 default:
  pr_err("Failed attach request for unsupported USB speed: %s\n",
   usb_speed_string(speed));
  return 0;
 }

 return 1;
}
