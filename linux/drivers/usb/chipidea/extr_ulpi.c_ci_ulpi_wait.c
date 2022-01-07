
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;


 int ETIMEDOUT ;
 int OP_ULPI_VIEWPORT ;
 int hw_read (struct ci_hdrc*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ci_ulpi_wait(struct ci_hdrc *ci, u32 mask)
{
 unsigned long usec = 10000;

 while (usec--) {
  if (!hw_read(ci, OP_ULPI_VIEWPORT, mask))
   return 0;

  udelay(1);
 }

 return -ETIMEDOUT;
}
