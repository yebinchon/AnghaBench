
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u8 ;
struct qed_dev {int dummy; } ;
struct qed_common_ops {int (* dbg_all_data ) (struct qed_dev*,int *) ;} ;


 int EINVAL ;
 int stub1 (struct qed_dev*,int *) ;

int
qedf_get_grc_dump(struct qed_dev *cdev, const struct qed_common_ops *common,
     u8 **buf, uint32_t *grcsize)
{
 if (!*buf)
  return -EINVAL;

 return common->dbg_all_data(cdev, *buf);
}
