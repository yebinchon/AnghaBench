
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fusb300 {scalar_t__ reg; } ;


 int FUSB300_EPSET0_STL ;
 scalar_t__ FUSB300_OFFSET_EPSET0 (int) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u8 fusb300_get_epnstall(struct fusb300 *fusb300, u8 ep)
{
 u8 value;
 u32 reg = ioread32(fusb300->reg + FUSB300_OFFSET_EPSET0(ep));

 value = reg & FUSB300_EPSET0_STL;

 return value;
}
