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
struct TYPE_2__ {unsigned char sign; int realbits; int storagebits; } ;
struct iio_chan_spec {int indexed; int address; int scan_index; TYPE_1__ scan_type; void* info_mask_shared_by_type; void* info_mask_separate; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_RAW ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_SCALE ; 

__attribute__((used)) static void FUNC1(struct iio_chan_spec *chan, int addr,
				      int cnt)
{
	chan->indexed = 1;
	chan->info_mask_separate = FUNC0(IIO_CHAN_INFO_RAW);
	chan->info_mask_shared_by_type = FUNC0(IIO_CHAN_INFO_SCALE);
	chan->address = addr;
	chan->scan_index = cnt;
	chan->scan_type.sign = 'u';
	chan->scan_type.realbits = 12;
	chan->scan_type.storagebits = 32;
}