
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct da9150_fg_pdata {int crit_soc_lvl; int warn_soc_lvl; int update_interval; } ;


 int GFP_KERNEL ;
 struct da9150_fg_pdata* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u8 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct da9150_fg_pdata *da9150_fg_dt_pdata(struct device *dev)
{
 struct device_node *fg_node = dev->of_node;
 struct da9150_fg_pdata *pdata;

 pdata = devm_kzalloc(dev, sizeof(struct da9150_fg_pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 of_property_read_u32(fg_node, "dlg,update-interval",
        &pdata->update_interval);
 of_property_read_u8(fg_node, "dlg,warn-soc-level",
       &pdata->warn_soc_lvl);
 of_property_read_u8(fg_node, "dlg,crit-soc-level",
       &pdata->crit_soc_lvl);

 return pdata;
}
