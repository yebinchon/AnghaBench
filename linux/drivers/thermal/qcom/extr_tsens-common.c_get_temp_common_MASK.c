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
struct tsens_sensor {size_t hw_id; } ;
struct tsens_priv {int /*<<< orphan*/ * rf; struct tsens_sensor* sensor; } ;

/* Variables and functions */
 size_t LAST_TEMP_0 ; 
 int FUNC0 (int,struct tsens_sensor*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

int FUNC2(struct tsens_priv *priv, int i, int *temp)
{
	struct tsens_sensor *s = &priv->sensor[i];
	int last_temp = 0, ret;

	ret = FUNC1(priv->rf[LAST_TEMP_0 + s->hw_id], &last_temp);
	if (ret)
		return ret;

	*temp = FUNC0(last_temp, s) * 1000;

	return 0;
}