
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int sddr09_common_init (struct us_data*) ;

__attribute__((used)) static int
usb_stor_sddr09_init(struct us_data *us) {
 return sddr09_common_init(us);
}
