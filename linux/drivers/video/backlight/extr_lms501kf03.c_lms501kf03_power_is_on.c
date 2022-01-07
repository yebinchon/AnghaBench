
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_BLANK_NORMAL ;

__attribute__((used)) static int lms501kf03_power_is_on(int power)
{
 return (power) <= FB_BLANK_NORMAL;
}
