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
struct armada_thermal_sensor {int /*<<< orphan*/  id; struct armada_thermal_priv* priv; } ;
struct armada_thermal_priv {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  interrupt_source; } ;

/* Variables and functions */
 int FUNC0 (struct armada_thermal_priv*,int*) ; 
 int FUNC1 (struct armada_thermal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *_sensor, int *temp)
{
	struct armada_thermal_sensor *sensor = _sensor;
	struct armada_thermal_priv *priv = sensor->priv;
	int ret;

	FUNC2(&priv->update_lock);

	/* Select the desired channel */
	ret = FUNC1(priv, sensor->id);
	if (ret)
		goto unlock_mutex;

	/* Do the actual reading */
	ret = FUNC0(priv, temp);
	if (ret)
		goto unlock_mutex;

	/*
	 * Select back the interrupt source channel from which a potential
	 * critical trip point has been set.
	 */
	ret = FUNC1(priv, priv->interrupt_source);

unlock_mutex:
	FUNC3(&priv->update_lock);

	return ret;
}