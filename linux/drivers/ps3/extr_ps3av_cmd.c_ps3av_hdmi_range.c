
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ps3_compare_firmware_version (int,int,int ) ;

__attribute__((used)) static int ps3av_hdmi_range(void)
{
 if (ps3_compare_firmware_version(1, 8, 0) < 0)
  return 0;
 else
  return 1;
}
