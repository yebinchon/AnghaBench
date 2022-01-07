
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ci_hdrc {int dummy; } ;


 int OP_PORTSC ;
 int PORTSC_PTC ;
 int __ffs (int ) ;
 int hw_read (struct ci_hdrc*,int ,int ) ;

u8 hw_port_test_get(struct ci_hdrc *ci)
{
 return hw_read(ci, OP_PORTSC, PORTSC_PTC) >> __ffs(PORTSC_PTC);
}
