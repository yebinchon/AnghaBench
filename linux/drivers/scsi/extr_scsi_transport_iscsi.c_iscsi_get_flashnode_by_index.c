
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_bus_flash_session {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int shost_gendev; } ;


 struct device* device_find_child (int *,int *,int ) ;
 int flashnode_match_index ;
 struct iscsi_bus_flash_session* iscsi_dev_to_flash_session (struct device*) ;

__attribute__((used)) static struct iscsi_bus_flash_session *
iscsi_get_flashnode_by_index(struct Scsi_Host *shost, uint32_t idx)
{
 struct iscsi_bus_flash_session *fnode_sess = ((void*)0);
 struct device *dev;

 dev = device_find_child(&shost->shost_gendev, &idx,
    flashnode_match_index);
 if (dev)
  fnode_sess = iscsi_dev_to_flash_session(dev);

 return fnode_sess;
}
