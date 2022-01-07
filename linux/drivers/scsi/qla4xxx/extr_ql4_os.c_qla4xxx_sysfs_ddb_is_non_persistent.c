
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bus_flash_session {scalar_t__ flash_state; } ;
struct device {int dummy; } ;


 scalar_t__ DEV_DB_NON_PERSISTENT ;
 struct iscsi_bus_flash_session* iscsi_dev_to_flash_session (struct device*) ;
 int iscsi_flashnode_bus_match (struct device*,int *) ;

__attribute__((used)) static int qla4xxx_sysfs_ddb_is_non_persistent(struct device *dev, void *data)
{
 struct iscsi_bus_flash_session *fnode_sess;

 if (!iscsi_flashnode_bus_match(dev, ((void*)0)))
  return 0;

 fnode_sess = iscsi_dev_to_flash_session(dev);

 return (fnode_sess->flash_state == DEV_DB_NON_PERSISTENT);
}
