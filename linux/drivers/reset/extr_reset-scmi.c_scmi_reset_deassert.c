
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scmi_handle {TYPE_1__* reset_ops; } ;
struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {int (* deassert ) (struct scmi_handle const*,unsigned long) ;} ;


 int stub1 (struct scmi_handle const*,unsigned long) ;
 struct scmi_handle* to_scmi_handle (struct reset_controller_dev*) ;

__attribute__((used)) static int
scmi_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
{
 const struct scmi_handle *handle = to_scmi_handle(rcdev);

 return handle->reset_ops->deassert(handle, id);
}
