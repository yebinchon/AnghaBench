
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int dummy; } ;



__attribute__((used)) static inline int
gasket_check_and_invoke_callback_nolock(struct gasket_dev *gasket_dev,
     int (*cb_function)(struct gasket_dev *))
{
 int ret = 0;

 if (cb_function)
  ret = cb_function(gasket_dev);
 return ret;
}
