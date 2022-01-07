
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int USBAT_DEV_HP8200 ;
 int init_usbat (struct us_data*,int ) ;

__attribute__((used)) static int init_usbat_cd(struct us_data *us)
{
 return init_usbat(us, USBAT_DEV_HP8200);
}
