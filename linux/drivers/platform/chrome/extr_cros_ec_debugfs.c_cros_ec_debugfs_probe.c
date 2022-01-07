
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct cros_ec_platform {char* ec_name; } ;
struct cros_ec_dev {struct cros_ec_debugfs* debug_info; TYPE_1__* ec_dev; int dev; } ;
struct cros_ec_debugfs {int dir; struct cros_ec_dev* ec; } ;
struct TYPE_3__ {int last_resume_result; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_create_console_log (struct cros_ec_debugfs*) ;
 int cros_ec_create_panicinfo (struct cros_ec_debugfs*) ;
 int cros_ec_pdinfo_fops ;
 int cros_ec_uptime_fops ;
 int debugfs_create_dir (char const*,int *) ;
 int debugfs_create_file (char*,int,int ,struct cros_ec_debugfs*,int *) ;
 int debugfs_create_x32 (char*,int,int ,int *) ;
 int debugfs_remove_recursive (int ) ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 struct cros_ec_platform* dev_get_platdata (int ) ;
 int dev_set_drvdata (TYPE_2__*,struct cros_ec_dev*) ;
 struct cros_ec_debugfs* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int cros_ec_debugfs_probe(struct platform_device *pd)
{
 struct cros_ec_dev *ec = dev_get_drvdata(pd->dev.parent);
 struct cros_ec_platform *ec_platform = dev_get_platdata(ec->dev);
 const char *name = ec_platform->ec_name;
 struct cros_ec_debugfs *debug_info;
 int ret;

 debug_info = devm_kzalloc(ec->dev, sizeof(*debug_info), GFP_KERNEL);
 if (!debug_info)
  return -ENOMEM;

 debug_info->ec = ec;
 debug_info->dir = debugfs_create_dir(name, ((void*)0));

 ret = cros_ec_create_panicinfo(debug_info);
 if (ret)
  goto remove_debugfs;

 ret = cros_ec_create_console_log(debug_info);
 if (ret)
  goto remove_debugfs;

 debugfs_create_file("pdinfo", 0444, debug_info->dir, debug_info,
       &cros_ec_pdinfo_fops);

 debugfs_create_file("uptime", 0444, debug_info->dir, debug_info,
       &cros_ec_uptime_fops);

 debugfs_create_x32("last_resume_result", 0444, debug_info->dir,
      &ec->ec_dev->last_resume_result);

 ec->debug_info = debug_info;

 dev_set_drvdata(&pd->dev, ec);

 return 0;

remove_debugfs:
 debugfs_remove_recursive(debug_info->dir);
 return ret;
}
