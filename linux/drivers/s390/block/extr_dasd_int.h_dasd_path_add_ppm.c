
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
typedef int __u8 ;


 int dasd_path_preferred (struct dasd_device*,int) ;

__attribute__((used)) static inline void dasd_path_add_ppm(struct dasd_device *device, __u8 pm)
{
 int chp;

 for (chp = 0; chp < 8; chp++)
  if (pm & (0x80 >> chp))
   dasd_path_preferred(device, chp);
}
