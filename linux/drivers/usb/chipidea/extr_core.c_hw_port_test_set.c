
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;
struct ci_hdrc {int dummy; } ;


 int EINVAL ;
 int OP_PORTSC ;
 int PORTSC_PTC ;
 scalar_t__ const __ffs (int ) ;
 int hw_write (struct ci_hdrc*,int ,int ,scalar_t__ const) ;

int hw_port_test_set(struct ci_hdrc *ci, u8 mode)
{
 const u8 TEST_MODE_MAX = 7;

 if (mode > TEST_MODE_MAX)
  return -EINVAL;

 hw_write(ci, OP_PORTSC, PORTSC_PTC, mode << __ffs(PORTSC_PTC));
 return 0;
}
