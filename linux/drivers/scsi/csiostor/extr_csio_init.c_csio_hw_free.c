
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int regstart; } ;


 int csio_dfs_destroy (struct csio_hw*) ;
 int csio_hw_exit (struct csio_hw*) ;
 int csio_hw_exit_workers (struct csio_hw*) ;
 int csio_intr_disable (struct csio_hw*,int) ;
 int csio_resource_free (struct csio_hw*) ;
 int iounmap (int ) ;
 int kfree (struct csio_hw*) ;

__attribute__((used)) static void
csio_hw_free(struct csio_hw *hw)
{
 csio_intr_disable(hw, 1);
 csio_hw_exit_workers(hw);
 csio_hw_exit(hw);
 iounmap(hw->regstart);
 csio_dfs_destroy(hw);
 csio_resource_free(hw);
 kfree(hw);
}
