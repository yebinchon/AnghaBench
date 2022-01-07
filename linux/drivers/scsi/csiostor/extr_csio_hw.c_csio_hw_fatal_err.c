
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 int GLOBALENABLE_F ;
 int SGE_CONTROL_A ;
 int csio_fatal (struct csio_hw*,char*) ;
 int csio_hw_intr_disable (struct csio_hw*) ;
 int csio_set_reg_field (struct csio_hw*,int ,int ,int ) ;

void
csio_hw_fatal_err(struct csio_hw *hw)
{
 csio_set_reg_field(hw, SGE_CONTROL_A, GLOBALENABLE_F, 0);
 csio_hw_intr_disable(hw);


 csio_fatal(hw, "HW Fatal error encountered!\n");
}
