
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_device {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void cxgbit_get_cdev(struct cxgbit_device *cdev)
{
 kref_get(&cdev->kref);
}
