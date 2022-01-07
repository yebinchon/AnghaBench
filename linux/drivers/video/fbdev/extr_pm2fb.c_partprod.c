
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ pp; } ;


 int DPRINTK (char*,scalar_t__) ;
 TYPE_1__* pp_table ;

__attribute__((used)) static u32 partprod(u32 xres)
{
 int i;

 for (i = 0; pp_table[i].width && pp_table[i].width != xres; i++)
  ;
 if (pp_table[i].width == 0)
  DPRINTK("invalid width %u\n", xres);
 return pp_table[i].pp;
}
