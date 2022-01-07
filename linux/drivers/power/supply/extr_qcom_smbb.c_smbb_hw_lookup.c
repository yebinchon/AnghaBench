
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stub1 (unsigned int) ;

__attribute__((used)) static unsigned int smbb_hw_lookup(unsigned int val, int (*fn)(unsigned int))
{
 unsigned int widx;
 unsigned int sel;

 for (widx = sel = 0; (*fn)(widx) <= val; ++widx)
  sel = widx;

 return sel;
}
