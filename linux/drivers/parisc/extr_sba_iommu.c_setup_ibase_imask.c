
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int dev; } ;
struct ioc {int dummy; } ;
struct ibase_data_struct {int ioc_num; struct ioc* ioc; } ;


 int device_for_each_child (int *,struct ibase_data_struct*,int ) ;
 int setup_ibase_imask_callback ;

__attribute__((used)) static void
setup_ibase_imask(struct parisc_device *sba, struct ioc *ioc, int ioc_num)
{
 struct ibase_data_struct ibase_data = {
  .ioc = ioc,
  .ioc_num = ioc_num,
 };

 device_for_each_child(&sba->dev, &ibase_data,
         setup_ibase_imask_callback);
}
