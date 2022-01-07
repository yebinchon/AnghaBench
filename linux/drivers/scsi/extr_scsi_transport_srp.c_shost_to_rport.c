
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int shost_gendev; } ;


 int WARN_ON_ONCE (int) ;
 struct srp_rport* dev_to_rport (struct device*) ;
 scalar_t__ device_for_each_child (int *,struct device**,int ) ;
 int find_child_rport ;

__attribute__((used)) static inline struct srp_rport *shost_to_rport(struct Scsi_Host *shost)
{
 struct device *child = ((void*)0);

 WARN_ON_ONCE(device_for_each_child(&shost->shost_gendev, &child,
        find_child_rport) < 0);
 return child ? dev_to_rport(child) : ((void*)0);
}
