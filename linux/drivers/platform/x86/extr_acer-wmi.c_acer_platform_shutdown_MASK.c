#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct acer_data {int dummy; } ;
struct TYPE_2__ {struct acer_data data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACER_CAP_MAILLED ; 
 int /*<<< orphan*/  LED_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* interface ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct platform_device *device)
{
	struct acer_data *data = &interface->data;

	if (!data)
		return;

	if (FUNC0(ACER_CAP_MAILLED))
		FUNC1(LED_OFF, ACER_CAP_MAILLED);
}