
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int pr_generation; } ;
struct se_device {int dev_reservation_lock; TYPE_1__ t10_pr; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u32 core_scsi3_pr_generation(struct se_device *dev)
{
 u32 prg;
 spin_lock(&dev->dev_reservation_lock);
 prg = dev->t10_pr.pr_generation++;
 spin_unlock(&dev->dev_reservation_lock);

 return prg;
}
