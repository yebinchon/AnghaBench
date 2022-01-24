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
struct input_handle {struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  sndbit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  SND_TONE ; 
 int /*<<< orphan*/  FUNC0 (struct input_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct input_handle *handle, void *data)
{
	unsigned int *hz = data;
	struct input_dev *dev = handle->dev;

	if (FUNC1(EV_SND, dev->evbit)) {
		if (FUNC1(SND_TONE, dev->sndbit)) {
			FUNC0(handle, EV_SND, SND_TONE, *hz);
			if (*hz)
				return 0;
		}
		if (FUNC1(SND_BELL, dev->sndbit))
			FUNC0(handle, EV_SND, SND_BELL, *hz ? 1 : 0);
	}

	return 0;
}