
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ctlr_is_hard_resettable (int ) ;
 scalar_t__ ctlr_is_soft_resettable (int ) ;

__attribute__((used)) static int ctlr_is_resettable(u32 board_id)
{
 return ctlr_is_hard_resettable(board_id) ||
  ctlr_is_soft_resettable(board_id);
}
