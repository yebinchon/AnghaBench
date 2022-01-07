
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp855x {int dummy; } ;


 int LP8557_BL_CMD ;
 int LP8557_BL_MASK ;
 int LP8557_BL_OFF ;
 int lp855x_update_bit (struct lp855x*,int ,int ,int ) ;

__attribute__((used)) static int lp8557_bl_off(struct lp855x *lp)
{

 return lp855x_update_bit(lp, LP8557_BL_CMD, LP8557_BL_MASK,
    LP8557_BL_OFF);
}
