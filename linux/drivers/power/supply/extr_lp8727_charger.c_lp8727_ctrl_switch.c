
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8727_chg {int dummy; } ;


 int LP8727_SWCTRL ;
 int lp8727_write_byte (struct lp8727_chg*,int ,int ) ;

__attribute__((used)) static inline void lp8727_ctrl_switch(struct lp8727_chg *pchg, u8 sw)
{
 lp8727_write_byte(pchg, LP8727_SWCTRL, sw);
}
