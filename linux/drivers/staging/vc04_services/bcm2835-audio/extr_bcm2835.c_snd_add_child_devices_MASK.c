#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {int dummy; } ;
struct bcm2835_audio_driver {int minchannels; } ;
struct TYPE_3__ {struct bcm2835_audio_driver* audio_driver; scalar_t__* is_enabled; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* children_devices ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int FUNC3 (struct device*,struct bcm2835_audio_driver*,int) ; 

__attribute__((used)) static int FUNC4(struct device *device, u32 numchans)
{
	int extrachannels_per_driver = 0;
	int extrachannels_remainder = 0;
	int count_devices = 0;
	int extrachannels = 0;
	int minchannels = 0;
	int i;

	for (i = 0; i < FUNC0(children_devices); i++)
		if (*children_devices[i].is_enabled)
			count_devices++;

	if (!count_devices)
		return 0;

	for (i = 0; i < FUNC0(children_devices); i++)
		if (*children_devices[i].is_enabled)
			minchannels +=
				children_devices[i].audio_driver->minchannels;

	if (minchannels < numchans) {
		extrachannels = numchans - minchannels;
		extrachannels_per_driver = extrachannels / count_devices;
		extrachannels_remainder = extrachannels % count_devices;
	}

	FUNC1(device, "minchannels %d\n", minchannels);
	FUNC1(device, "extrachannels %d\n", extrachannels);
	FUNC1(device, "extrachannels_per_driver %d\n",
		extrachannels_per_driver);
	FUNC1(device, "extrachannels_remainder %d\n",
		extrachannels_remainder);

	for (i = 0; i < FUNC0(children_devices); i++) {
		struct bcm2835_audio_driver *audio_driver;
		int numchannels_this_device;
		int err;

		if (!*children_devices[i].is_enabled)
			continue;

		audio_driver = children_devices[i].audio_driver;

		if (audio_driver->minchannels > numchans) {
			FUNC2(device,
				"Out of channels, needed %d but only %d left\n",
				audio_driver->minchannels,
				numchans);
			continue;
		}

		numchannels_this_device =
			audio_driver->minchannels + extrachannels_per_driver +
			extrachannels_remainder;
		extrachannels_remainder = 0;

		numchans -= numchannels_this_device;

		err = FUNC3(device, audio_driver,
					   numchannels_this_device);
		if (err)
			return err;
	}

	return 0;
}