
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_device {int kref; } ;


 int _cxgbit_free_cdev ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void cxgbit_put_cdev(struct cxgbit_device *cdev)
{
 kref_put(&cdev->kref, _cxgbit_free_cdev);
}
