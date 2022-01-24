#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  dev; } ;
struct TYPE_17__ {TYPE_9__ led; } ;
struct TYPE_16__ {TYPE_9__ led; } ;
struct TYPE_15__ {TYPE_9__ led; } ;
struct TYPE_14__ {TYPE_9__ led; } ;
struct TYPE_13__ {TYPE_9__ led; } ;
struct TYPE_12__ {TYPE_9__ led; } ;
struct TYPE_11__ {TYPE_9__ led; } ;
struct TYPE_10__ {TYPE_9__ led; } ;
struct asus_laptop {int /*<<< orphan*/ * led_workqueue; TYPE_8__ kled; TYPE_7__ gled; TYPE_6__ rled; TYPE_5__ pled; TYPE_4__ tled; TYPE_3__ mled; TYPE_2__ bled; TYPE_1__ wled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 

__attribute__((used)) static void FUNC3(struct asus_laptop *asus)
{
	if (!FUNC0(asus->wled.led.dev))
		FUNC2(&asus->wled.led);
	if (!FUNC0(asus->bled.led.dev))
		FUNC2(&asus->bled.led);
	if (!FUNC0(asus->mled.led.dev))
		FUNC2(&asus->mled.led);
	if (!FUNC0(asus->tled.led.dev))
		FUNC2(&asus->tled.led);
	if (!FUNC0(asus->pled.led.dev))
		FUNC2(&asus->pled.led);
	if (!FUNC0(asus->rled.led.dev))
		FUNC2(&asus->rled.led);
	if (!FUNC0(asus->gled.led.dev))
		FUNC2(&asus->gled.led);
	if (!FUNC0(asus->kled.led.dev))
		FUNC2(&asus->kled.led);
	if (asus->led_workqueue) {
		FUNC1(asus->led_workqueue);
		asus->led_workqueue = NULL;
	}
}