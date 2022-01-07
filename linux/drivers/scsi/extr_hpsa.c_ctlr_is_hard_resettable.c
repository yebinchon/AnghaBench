
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int ) ;
 int board_id_in_array (int ,int ,int ) ;
 int unresettable_controller ;

__attribute__((used)) static int ctlr_is_hard_resettable(u32 board_id)
{
 return !board_id_in_array(unresettable_controller,
   ARRAY_SIZE(unresettable_controller), board_id);
}
