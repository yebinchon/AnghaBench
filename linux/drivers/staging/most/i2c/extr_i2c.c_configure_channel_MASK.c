#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct most_interface {int dummy; } ;
struct most_channel_config {scalar_t__ data_type; scalar_t__ direction; } ;
struct TYPE_6__ {int int_disabled; unsigned int delay; } ;
struct hdm_i2c {TYPE_3__ rx; TYPE_2__* client; TYPE_1__* capabilities; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ MOST_CH_CONTROL ; 
 scalar_t__ MOST_CH_RX ; 
 unsigned int MSEC_PER_SEC ; 
 int NUM_CHANNELS ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  most_irq_handler ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int polling_rate ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hdm_i2c*) ; 
 struct hdm_i2c* FUNC6 (struct most_interface*) ; 

__attribute__((used)) static int FUNC7(struct most_interface *most_iface,
			     int ch_idx,
			     struct most_channel_config *channel_config)
{
	int ret;
	struct hdm_i2c *dev = FUNC6(most_iface);
	unsigned int delay, pr;

	FUNC0(ch_idx < 0 || ch_idx >= NUM_CHANNELS);

	if (channel_config->data_type != MOST_CH_CONTROL) {
		FUNC3("bad data type for channel %d\n", ch_idx);
		return -EPERM;
	}

	if (channel_config->direction != dev->capabilities[ch_idx].direction) {
		FUNC3("bad direction for channel %d\n", ch_idx);
		return -EPERM;
	}

	if (channel_config->direction == MOST_CH_RX) {
		if (!polling_rate) {
			if (dev->client->irq <= 0) {
				FUNC3("bad irq: %d\n", dev->client->irq);
				return -ENOENT;
			}
			dev->rx.int_disabled = false;
			ret = FUNC5(dev->client->irq, most_irq_handler, 0,
					  dev->client->name, dev);
			if (ret) {
				FUNC3("request_irq(%d) failed: %d\n",
				       dev->client->irq, ret);
				return ret;
			}
		} else {
			delay = FUNC2(MSEC_PER_SEC / polling_rate);
			dev->rx.delay = delay ? delay : 1;
			pr = MSEC_PER_SEC / FUNC1(dev->rx.delay);
			FUNC4("polling rate is %u Hz\n", pr);
		}
	}

	return 0;
}