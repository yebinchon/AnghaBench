
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xcopy_dev_search_info {struct se_device* found_dev; int dev_wwn; } ;
struct TYPE_4__ {int cg_item; } ;
struct TYPE_3__ {int emulate_3pc; } ;
struct se_device {TYPE_2__ dev_group; TYPE_1__ dev_attrib; } ;


 int XCOPY_NAA_IEEE_REGEX_LEN ;
 int memcmp (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,struct se_device*,...) ;
 int pr_err (char*,int,struct se_device*) ;
 int target_depend_item (int *) ;
 int target_xcopy_gen_naa_ieee (struct se_device*,unsigned char*) ;

__attribute__((used)) static int target_xcopy_locate_se_dev_e4_iter(struct se_device *se_dev,
           void *data)
{
 struct xcopy_dev_search_info *info = data;
 unsigned char tmp_dev_wwn[XCOPY_NAA_IEEE_REGEX_LEN];
 int rc;

 if (!se_dev->dev_attrib.emulate_3pc)
  return 0;

 memset(&tmp_dev_wwn[0], 0, XCOPY_NAA_IEEE_REGEX_LEN);
 target_xcopy_gen_naa_ieee(se_dev, &tmp_dev_wwn[0]);

 rc = memcmp(&tmp_dev_wwn[0], info->dev_wwn, XCOPY_NAA_IEEE_REGEX_LEN);
 if (rc != 0)
  return 0;

 info->found_dev = se_dev;
 pr_debug("XCOPY 0xe4: located se_dev: %p\n", se_dev);

 rc = target_depend_item(&se_dev->dev_group.cg_item);
 if (rc != 0) {
  pr_err("configfs_depend_item attempt failed: %d for se_dev: %p\n",
         rc, se_dev);
  return rc;
 }

 pr_debug("Called configfs_depend_item for se_dev: %p se_dev->se_dev_group: %p\n",
   se_dev, &se_dev->dev_group);
 return 1;
}
