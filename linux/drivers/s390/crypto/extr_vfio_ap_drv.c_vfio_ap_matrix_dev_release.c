
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ap_matrix_dev {int dummy; } ;


 struct ap_matrix_dev* dev_get_drvdata (struct device*) ;
 int kfree (struct ap_matrix_dev*) ;

__attribute__((used)) static void vfio_ap_matrix_dev_release(struct device *dev)
{
 struct ap_matrix_dev *matrix_dev = dev_get_drvdata(dev);

 kfree(matrix_dev);
}
