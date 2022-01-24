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
typedef  int u32 ;
struct brcmstb_thermal_priv {int /*<<< orphan*/  thermal; scalar_t__ tmon_base; } ;
struct avs_tmon_trip {int reg_msk; int reg_shift; scalar_t__ reg_offs; } ;
typedef  enum avs_tmon_trip_type { ____Placeholder_avs_tmon_trip_type } avs_tmon_trip_type ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct avs_tmon_trip* avs_tmon_trips ; 

__attribute__((used)) static int FUNC2(struct brcmstb_thermal_priv *priv,
				  enum avs_tmon_trip_type type)
{
	struct avs_tmon_trip *trip = &avs_tmon_trips[type];
	u32 val = FUNC0(priv->tmon_base + trip->reg_offs);

	val &= trip->reg_msk;
	val >>= trip->reg_shift;

	return FUNC1(priv->thermal, val);
}