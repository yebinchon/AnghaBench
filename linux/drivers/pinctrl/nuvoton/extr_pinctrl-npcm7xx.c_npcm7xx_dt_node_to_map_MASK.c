#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pinctrl_map {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int /*<<< orphan*/  dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_MAP_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pinctrl_dev*,struct device_node*,struct pinctrl_map**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct npcm7xx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				  struct device_node *np_config,
				  struct pinctrl_map **map,
				  u32 *num_maps)
{
	struct npcm7xx_pinctrl *npcm = FUNC2(pctldev);

	FUNC0(npcm->dev, "dt_node_to_map: %s\n", np_config->name);
	return FUNC1(pctldev, np_config,
					      map, num_maps,
					      PIN_MAP_TYPE_INVALID);
}