
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int dev; } ;
struct device_node {int name; } ;


 int PIN_MAP_TYPE_INVALID ;
 int dev_dbg (int ,char*,int ) ;
 int pinconf_generic_dt_node_to_map (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,int *,int ) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm7xx_dt_node_to_map(struct pinctrl_dev *pctldev,
      struct device_node *np_config,
      struct pinctrl_map **map,
      u32 *num_maps)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);

 dev_dbg(npcm->dev, "dt_node_to_map: %s\n", np_config->name);
 return pinconf_generic_dt_node_to_map(pctldev, np_config,
           map, num_maps,
           PIN_MAP_TYPE_INVALID);
}
