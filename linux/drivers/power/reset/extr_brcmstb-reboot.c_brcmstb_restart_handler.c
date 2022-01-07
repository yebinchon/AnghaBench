
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int sw_mstr_rst_mask; int rst_src_en_mask; } ;


 int NOTIFY_DONE ;
 int pr_err (char*,int) ;
 int regmap ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;
 TYPE_1__* reset_masks ;
 int rst_src_en ;
 int sw_mstr_rst ;

__attribute__((used)) static int brcmstb_restart_handler(struct notifier_block *this,
       unsigned long mode, void *cmd)
{
 int rc;
 u32 tmp;

 rc = regmap_write(regmap, rst_src_en, reset_masks->rst_src_en_mask);
 if (rc) {
  pr_err("failed to write rst_src_en (%d)\n", rc);
  return NOTIFY_DONE;
 }

 rc = regmap_read(regmap, rst_src_en, &tmp);
 if (rc) {
  pr_err("failed to read rst_src_en (%d)\n", rc);
  return NOTIFY_DONE;
 }

 rc = regmap_write(regmap, sw_mstr_rst, reset_masks->sw_mstr_rst_mask);
 if (rc) {
  pr_err("failed to write sw_mstr_rst (%d)\n", rc);
  return NOTIFY_DONE;
 }

 rc = regmap_read(regmap, sw_mstr_rst, &tmp);
 if (rc) {
  pr_err("failed to read sw_mstr_rst (%d)\n", rc);
  return NOTIFY_DONE;
 }

 while (1)
  ;

 return NOTIFY_DONE;
}
