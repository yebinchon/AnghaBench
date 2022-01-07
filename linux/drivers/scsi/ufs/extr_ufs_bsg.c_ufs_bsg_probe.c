
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int release; int parent; } ;
struct ufs_hba {struct request_queue* bsg_queue; struct Scsi_Host* host; struct device bsg_dev; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {int host_no; struct device shost_gendev; } ;


 scalar_t__ IS_ERR (struct request_queue*) ;
 int PTR_ERR (struct request_queue*) ;
 struct request_queue* bsg_setup_queue (struct device*,int ,int ,int *,int ) ;
 int dev_err (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 int dev_set_name (struct device*,char*) ;
 int device_add (struct device*) ;
 int device_initialize (struct device*) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int ufs_bsg_node_release ;
 int ufs_bsg_request ;

int ufs_bsg_probe(struct ufs_hba *hba)
{
 struct device *bsg_dev = &hba->bsg_dev;
 struct Scsi_Host *shost = hba->host;
 struct device *parent = &shost->shost_gendev;
 struct request_queue *q;
 int ret;

 device_initialize(bsg_dev);

 bsg_dev->parent = get_device(parent);
 bsg_dev->release = ufs_bsg_node_release;

 dev_set_name(bsg_dev, "ufs-bsg");

 ret = device_add(bsg_dev);
 if (ret)
  goto out;

 q = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), ufs_bsg_request, ((void*)0), 0);
 if (IS_ERR(q)) {
  ret = PTR_ERR(q);
  goto out;
 }

 hba->bsg_queue = q;

 return 0;

out:
 dev_err(bsg_dev, "fail to initialize a bsg dev %d\n", shost->host_no);
 put_device(bsg_dev);
 return ret;
}
