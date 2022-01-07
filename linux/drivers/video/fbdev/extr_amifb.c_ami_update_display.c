
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amifb_par {int ddfstop; int ddfstrt; int bpl2mod; int bpl1mod; int bplcon1; } ;
struct TYPE_2__ {int ddfstop; int ddfstrt; int bpl2mod; int bpl1mod; int bplcon1; } ;


 TYPE_1__ custom ;
 int ddfstop2hw (int ) ;
 int ddfstrt2hw (int ) ;

__attribute__((used)) static void ami_update_display(const struct amifb_par *par)
{
 custom.bplcon1 = par->bplcon1;
 custom.bpl1mod = par->bpl1mod;
 custom.bpl2mod = par->bpl2mod;
 custom.ddfstrt = ddfstrt2hw(par->ddfstrt);
 custom.ddfstop = ddfstop2hw(par->ddfstop);
}
