
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sync; int mode; } ;
struct TYPE_8__ {TYPE_1__ st; } ;
struct atafb_par {scalar_t__ screen_base; TYPE_2__ hw; } ;
struct TYPE_12__ {scalar_t__ screen_base; } ;
struct TYPE_11__ {int (* set_screen_base ) (scalar_t__) ;} ;
struct TYPE_10__ {int syncmode; } ;
struct TYPE_9__ {int st_shiftmode; } ;


 TYPE_6__ current_par ;
 TYPE_5__* fbhw ;
 TYPE_4__ shifter_st ;
 TYPE_3__ shifter_tt ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void stste_set_par(struct atafb_par *par)
{
 shifter_tt.st_shiftmode = par->hw.st.mode;
 shifter_st.syncmode = par->hw.st.sync;

 if (current_par.screen_base != par->screen_base)
  fbhw->set_screen_base(par->screen_base);
}
