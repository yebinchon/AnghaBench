
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int model; } ;
struct TYPE_3__ {int cg_item; } ;
struct se_device {TYPE_2__ t10_wwn; TYPE_1__ dev_group; } ;


 scalar_t__ INQUIRY_MODEL_LEN ;
 char* config_item_name (int *) ;
 int pr_warn (char*,struct se_device*,char const*) ;
 int strlcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void dev_set_t10_wwn_model_alias(struct se_device *dev)
{
 const char *configname;

 configname = config_item_name(&dev->dev_group.cg_item);
 if (strlen(configname) >= INQUIRY_MODEL_LEN) {
  pr_warn("dev[%p]: Backstore name '%s' is too long for "
   "INQUIRY_MODEL, truncating to 15 characters\n", dev,
   configname);
 }





 strlcpy(dev->t10_wwn.model, configname, INQUIRY_MODEL_LEN);
}
