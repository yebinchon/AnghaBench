
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int clk_speed; int clock_speed; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* clk_mt ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int get_dim2_clk_speed(const char *clock_speed, u8 *val)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(clk_mt); i++) {
  if (!strcmp(clock_speed, clk_mt[i].clock_speed)) {
   *val = clk_mt[i].clk_speed;
   return 0;
  }
 }
 return -EINVAL;
}
