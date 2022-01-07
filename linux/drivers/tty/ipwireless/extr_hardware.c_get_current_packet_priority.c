
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {scalar_t__ initializing; scalar_t__ to_setup; } ;


 int NL_NUM_OF_PRIORITIES ;
 int PRIO_SETUP ;

__attribute__((used)) static int get_current_packet_priority(struct ipw_hardware *hw)
{






 return (hw->to_setup || hw->initializing
   ? PRIO_SETUP + 1 : NL_NUM_OF_PRIORITIES);
}
