
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; int addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* chips_init_ar ;
 TYPE_1__* chips_init_cr ;
 TYPE_1__* chips_init_fr ;
 TYPE_1__* chips_init_gr ;
 TYPE_1__* chips_init_sr ;
 TYPE_1__* chips_init_xr ;
 int outb (int,int) ;
 int write_ar (int ,int ) ;
 int write_cr (int ,int ) ;
 int write_fr (int ,int ) ;
 int write_gr (int ,int ) ;
 int write_sr (int ,int ) ;
 int write_xr (int ,int ) ;

__attribute__((used)) static void chips_hw_init(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(chips_init_xr); ++i)
  write_xr(chips_init_xr[i].addr, chips_init_xr[i].data);
 outb(0x29, 0x3c2);
 for (i = 0; i < ARRAY_SIZE(chips_init_sr); ++i)
  write_sr(chips_init_sr[i].addr, chips_init_sr[i].data);
 for (i = 0; i < ARRAY_SIZE(chips_init_gr); ++i)
  write_gr(chips_init_gr[i].addr, chips_init_gr[i].data);
 for (i = 0; i < ARRAY_SIZE(chips_init_ar); ++i)
  write_ar(chips_init_ar[i].addr, chips_init_ar[i].data);
 for (i = 0; i < ARRAY_SIZE(chips_init_cr); ++i)
  write_cr(chips_init_cr[i].addr, chips_init_cr[i].data);
 for (i = 0; i < ARRAY_SIZE(chips_init_fr); ++i)
  write_fr(chips_init_fr[i].addr, chips_init_fr[i].data);
}
