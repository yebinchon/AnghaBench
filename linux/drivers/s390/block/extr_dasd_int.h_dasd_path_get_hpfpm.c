
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
typedef int __u8 ;


 scalar_t__ dasd_path_is_nohpf (struct dasd_device*,int) ;

__attribute__((used)) static inline __u8 dasd_path_get_hpfpm(struct dasd_device *device)
{
 int chp;
 __u8 hpfpm = 0x00;

 for (chp = 0; chp < 8; chp++)
  if (dasd_path_is_nohpf(device, chp))
   hpfpm |= 0x80 >> chp;
 return hpfpm;
}
