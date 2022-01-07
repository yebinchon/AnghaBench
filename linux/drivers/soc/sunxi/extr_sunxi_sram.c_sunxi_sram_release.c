
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_sram_desc {int claimed; } ;
struct sunxi_sram_data {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct sunxi_sram_data const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sram_lock ;
 struct sunxi_sram_data* sunxi_sram_of_parse (int ,int *) ;
 struct sunxi_sram_desc* to_sram_desc (struct sunxi_sram_data const*) ;

int sunxi_sram_release(struct device *dev)
{
 const struct sunxi_sram_data *sram_data;
 struct sunxi_sram_desc *sram_desc;

 if (!dev || !dev->of_node)
  return -EINVAL;

 sram_data = sunxi_sram_of_parse(dev->of_node, ((void*)0));
 if (IS_ERR(sram_data))
  return -EINVAL;

 sram_desc = to_sram_desc(sram_data);

 spin_lock(&sram_lock);
 sram_desc->claimed = 0;
 spin_unlock(&sram_lock);

 return 0;
}
