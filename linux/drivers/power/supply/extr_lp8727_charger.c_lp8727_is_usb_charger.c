
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8727_chg {int dummy; } ;


 int LP8727_CHPORT ;
 int LP8727_STATUS1 ;
 int lp8727_read_byte (struct lp8727_chg*,int ,int*) ;

__attribute__((used)) static int lp8727_is_usb_charger(struct lp8727_chg *pchg)
{
 u8 val;

 lp8727_read_byte(pchg, LP8727_STATUS1, &val);
 return val & LP8727_CHPORT;
}
