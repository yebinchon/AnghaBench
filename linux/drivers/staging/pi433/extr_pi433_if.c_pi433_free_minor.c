
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi433_device {int minor; } ;


 int idr_remove (int *,int ) ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pi433_idr ;

__attribute__((used)) static void pi433_free_minor(struct pi433_device *dev)
{
 mutex_lock(&minor_lock);
 idr_remove(&pi433_idr, dev->minor);
 mutex_unlock(&minor_lock);
}
