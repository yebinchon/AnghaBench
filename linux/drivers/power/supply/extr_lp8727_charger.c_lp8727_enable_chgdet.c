
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8727_chg {int dummy; } ;


 int LP8727_CHGDET_EN ;
 int LP8727_CTRL2 ;
 int lp8727_read_byte (struct lp8727_chg*,int ,int *) ;
 int lp8727_write_byte (struct lp8727_chg*,int ,int ) ;

__attribute__((used)) static void lp8727_enable_chgdet(struct lp8727_chg *pchg)
{
 u8 val;

 lp8727_read_byte(pchg, LP8727_CTRL2, &val);
 val |= LP8727_CHGDET_EN;
 lp8727_write_byte(pchg, LP8727_CTRL2, val);
}
