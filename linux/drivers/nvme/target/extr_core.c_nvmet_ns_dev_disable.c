
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int dummy; } ;


 int nvmet_bdev_ns_disable (struct nvmet_ns*) ;
 int nvmet_file_ns_disable (struct nvmet_ns*) ;

__attribute__((used)) static void nvmet_ns_dev_disable(struct nvmet_ns *ns)
{
 nvmet_bdev_ns_disable(ns);
 nvmet_file_ns_disable(ns);
}
