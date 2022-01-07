
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int dummy; } ;


 int __fieldbus_dev_unregister (struct fieldbus_dev*) ;
 int fieldbus_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fieldbus_dev_unregister(struct fieldbus_dev *fb)
{
 mutex_lock(&fieldbus_mtx);
 __fieldbus_dev_unregister(fb);
 mutex_unlock(&fieldbus_mtx);
}
