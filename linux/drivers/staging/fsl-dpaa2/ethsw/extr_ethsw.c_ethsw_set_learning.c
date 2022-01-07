
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethsw_core {int learning; int dev; int dpsw_handle; int mc_io; } ;
typedef enum dpsw_fdb_learning_mode { ____Placeholder_dpsw_fdb_learning_mode } dpsw_fdb_learning_mode ;


 int DPSW_FDB_LEARNING_MODE_DIS ;
 int DPSW_FDB_LEARNING_MODE_HW ;
 int dev_err (int ,char*,int) ;
 int dpsw_fdb_set_learning_mode (int ,int ,int ,int ,int) ;

__attribute__((used)) static int ethsw_set_learning(struct ethsw_core *ethsw, bool enable)
{
 enum dpsw_fdb_learning_mode learn_mode;
 int err;

 if (enable)
  learn_mode = DPSW_FDB_LEARNING_MODE_HW;
 else
  learn_mode = DPSW_FDB_LEARNING_MODE_DIS;

 err = dpsw_fdb_set_learning_mode(ethsw->mc_io, 0, ethsw->dpsw_handle, 0,
      learn_mode);
 if (err) {
  dev_err(ethsw->dev, "dpsw_fdb_set_learning_mode err %d\n", err);
  return err;
 }
 ethsw->learning = enable;

 return 0;
}
