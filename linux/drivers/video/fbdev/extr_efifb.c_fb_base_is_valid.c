
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; scalar_t__ ext_lfb_base; scalar_t__ lfb_base; } ;


 int VIDEO_CAPABILITY_64BIT_BASE ;
 TYPE_1__ screen_info ;

__attribute__((used)) static inline bool fb_base_is_valid(void)
{
 if (screen_info.lfb_base)
  return 1;

 if (!(screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE))
  return 0;

 if (screen_info.ext_lfb_base)
  return 1;

 return 0;
}
