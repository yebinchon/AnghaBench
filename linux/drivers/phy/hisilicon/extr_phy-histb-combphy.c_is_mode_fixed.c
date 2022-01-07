
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct histb_combphy_mode {scalar_t__ fixed; } ;


 scalar_t__ PHY_NONE ;

__attribute__((used)) static int is_mode_fixed(struct histb_combphy_mode *mode)
{
 return (mode->fixed != PHY_NONE) ? 1 : 0;
}
