
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vrfb_loaded ;

bool omap_vrfb_supported(void)
{
 return vrfb_loaded;
}
