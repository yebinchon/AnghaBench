
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loopback; int clock_speed; } ;
struct mgsl_struct {TYPE_1__ params; } ;


 int usc_enable_aux_clock (struct mgsl_struct*,int ) ;
 int usc_enable_loopback (struct mgsl_struct*,int) ;
 int usc_loopback_frame (struct mgsl_struct*) ;
 int usc_set_sdlc_mode (struct mgsl_struct*) ;

__attribute__((used)) static void usc_set_sync_mode( struct mgsl_struct *info )
{
 usc_loopback_frame( info );
 usc_set_sdlc_mode( info );

 usc_enable_aux_clock(info, info->params.clock_speed);

 if (info->params.loopback)
  usc_enable_loopback(info,1);

}
