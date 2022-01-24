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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint ;
struct qla27xx_image_status {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ulong
FUNC1(struct qla27xx_image_status *image_status)
{
	uint32_t *p = (void *)image_status;
	uint n = sizeof(*image_status) / sizeof(*p);
	uint32_t sum = 0;

	for ( ; n--; p++)
		sum += FUNC0(p);

	return sum;
}