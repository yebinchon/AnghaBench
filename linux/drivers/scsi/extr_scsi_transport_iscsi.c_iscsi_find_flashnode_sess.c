
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {int shost_gendev; } ;


 struct device* device_find_child (int *,void*,int (*) (struct device*,void*)) ;

struct device *
iscsi_find_flashnode_sess(struct Scsi_Host *shost, void *data,
     int (*fn)(struct device *dev, void *data))
{
 return device_find_child(&shost->shost_gendev, data, fn);
}
