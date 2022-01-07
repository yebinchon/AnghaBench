
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {struct uwb_beca_e* bce; } ;
struct uwb_beca_e {int mutex; int lqe_stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t stats_show (int *,char*) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;

__attribute__((used)) static ssize_t uwb_dev_LQE_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_beca_e *bce = uwb_dev->bce;
 size_t result;

 mutex_lock(&bce->mutex);
 result = stats_show(&uwb_dev->bce->lqe_stats, buf);
 mutex_unlock(&bce->mutex);
 return result;
}
