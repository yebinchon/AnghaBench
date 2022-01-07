
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_access; int * clk_tw1; int * clk_tw0; int clk_div; } ;


 int _set_timing (int ,int ,int ) ;
 TYPE_1__ sossi ;

__attribute__((used)) static inline void set_timing(int access)
{
 if (access != sossi.last_access) {
  sossi.last_access = access;
  _set_timing(sossi.clk_div,
       sossi.clk_tw0[access], sossi.clk_tw1[access]);
 }
}
