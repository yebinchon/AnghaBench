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
struct lp3943_pwm_map {int num_outputs; int* output; } ;
struct lp3943_pwm {struct lp3943* lp3943; } ;
struct lp3943 {int /*<<< orphan*/  pin_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lp3943_pwm_map*) ; 

__attribute__((used)) static void FUNC2(struct lp3943_pwm *lp3943_pwm,
				struct lp3943_pwm_map *pwm_map)
{
	struct lp3943 *lp3943 = lp3943_pwm->lp3943;
	int i, offset;

	for (i = 0; i < pwm_map->num_outputs; i++) {
		offset = pwm_map->output[i];
		FUNC0(offset, &lp3943->pin_used);
	}

	FUNC1(pwm_map);
}