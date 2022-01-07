
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;


 int dasd_path_clear_verify (struct dasd_device*,int) ;

__attribute__((used)) static inline void dasd_path_clear_all_verify(struct dasd_device *device)
{
 int chp;

 for (chp = 0; chp < 8; chp++)
  dasd_path_clear_verify(device, chp);
}
