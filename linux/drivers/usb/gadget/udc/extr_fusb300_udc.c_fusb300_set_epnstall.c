
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb300 {int dummy; } ;


 int FUSB300_EPSET0_STL ;
 int FUSB300_OFFSET_EPSET0 (int ) ;
 int fusb300_enable_bit (struct fusb300*,int ,int ) ;

__attribute__((used)) static void fusb300_set_epnstall(struct fusb300 *fusb300, u8 ep)
{
 fusb300_enable_bit(fusb300, FUSB300_OFFSET_EPSET0(ep),
  FUSB300_EPSET0_STL);
}
