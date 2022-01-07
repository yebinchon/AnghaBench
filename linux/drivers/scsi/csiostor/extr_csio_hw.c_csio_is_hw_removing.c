
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 int csio_hws_removing ;
 int csio_match_state (struct csio_hw*,int ) ;

int csio_is_hw_removing(struct csio_hw *hw)
{
 return csio_match_state(hw, csio_hws_removing);
}
