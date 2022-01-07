
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {void* log_level; } ;
struct csio_lnode {TYPE_1__ params; } ;
struct TYPE_4__ {void* log_level; } ;
struct csio_hw {TYPE_2__ params; } ;
typedef int ssize_t ;


 int EINVAL ;
 int class_to_shost (struct device*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int isdigit (char const) ;
 struct csio_lnode* shost_priv (int ) ;
 scalar_t__ sscanf (char const*,char*,void**) ;

__attribute__((used)) static ssize_t
csio_store_dbg_level(struct device *dev,
     struct device_attribute *attr, const char *buf, size_t count)
{
 struct csio_lnode *ln = shost_priv(class_to_shost(dev));
 struct csio_hw *hw = csio_lnode_to_hw(ln);
 uint32_t dbg_level = 0;

 if (!isdigit(buf[0]))
  return -EINVAL;

 if (sscanf(buf, "%i", &dbg_level))
  return -EINVAL;

 ln->params.log_level = dbg_level;
 hw->params.log_level = dbg_level;

 return 0;
}
