
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int cmdr_lock; int flags; } ;


 int TCMU_DEV_BIT_BLOCKED ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void tcmu_unblock_dev(struct tcmu_dev *udev)
{
 mutex_lock(&udev->cmdr_lock);
 clear_bit(TCMU_DEV_BIT_BLOCKED, &udev->flags);
 mutex_unlock(&udev->cmdr_lock);
}
