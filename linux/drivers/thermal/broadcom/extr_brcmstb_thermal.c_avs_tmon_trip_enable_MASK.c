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
struct brcmstb_thermal_priv {scalar_t__ tmon_base; int /*<<< orphan*/  dev; } ;
struct avs_tmon_trip {scalar_t__ enable_offs; int /*<<< orphan*/  enable_mask; } ;
typedef  enum avs_tmon_trip_type { ____Placeholder_avs_tmon_trip_type } avs_tmon_trip_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct avs_tmon_trip* avs_tmon_trips ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct brcmstb_thermal_priv *priv,
				 enum avs_tmon_trip_type type, int en)
{
	struct avs_tmon_trip *trip = &avs_tmon_trips[type];
	u32 val = FUNC0(priv->tmon_base + trip->enable_offs);

	FUNC2(priv->dev, "%sable trip, type %d\n", en ? "en" : "dis", type);

	if (en)
		val |= trip->enable_mask;
	else
		val &= ~trip->enable_mask;

	FUNC1(val, priv->tmon_base + trip->enable_offs);
}