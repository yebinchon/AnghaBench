
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_device {int taskfileset; int dev_status; int dev_type; int device_id; } ;


 int MVS_DEV_NORMAL ;
 int MVS_ID_NOT_MAPPED ;
 int SAS_PHY_UNUSED ;
 int memset (struct mvs_device*,int ,int) ;

__attribute__((used)) static void mvs_free_dev(struct mvs_device *mvi_dev)
{
 u32 id = mvi_dev->device_id;
 memset(mvi_dev, 0, sizeof(*mvi_dev));
 mvi_dev->device_id = id;
 mvi_dev->dev_type = SAS_PHY_UNUSED;
 mvi_dev->dev_status = MVS_DEV_NORMAL;
 mvi_dev->taskfileset = MVS_ID_NOT_MAPPED;
}
