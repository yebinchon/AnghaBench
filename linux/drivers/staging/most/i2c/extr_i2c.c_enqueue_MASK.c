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
struct mbo {int /*<<< orphan*/  (* complete ) (struct mbo*) ;int /*<<< orphan*/  status; scalar_t__ buffer_length; scalar_t__ processed_length; int /*<<< orphan*/  virt_address; int /*<<< orphan*/  list; } ;
struct TYPE_6__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {TYPE_3__ dwork; scalar_t__ int_disabled; int /*<<< orphan*/  list; } ;
struct hdm_i2c {TYPE_2__* client; TYPE_1__ rx; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CH_RX ; 
 int /*<<< orphan*/  MBO_E_INVAL ; 
 int /*<<< orphan*/  MBO_SUCCESS ; 
 int NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ polling_rate ; 
 int /*<<< orphan*/  FUNC7 (struct mbo*) ; 
 struct hdm_i2c* FUNC8 (struct most_interface*) ; 

__attribute__((used)) static int FUNC9(struct most_interface *most_iface,
		   int ch_idx, struct mbo *mbo)
{
	struct hdm_i2c *dev = FUNC8(most_iface);
	int ret;

	FUNC0(ch_idx < 0 || ch_idx >= NUM_CHANNELS);

	if (ch_idx == CH_RX) {
		/* RX */
		if (!polling_rate)
			FUNC2(dev->client->irq);
		FUNC1(&dev->rx.dwork);
		FUNC5(&mbo->list, &dev->rx.list);
		if (dev->rx.int_disabled || polling_rate)
			FUNC6(&dev->rx.dwork.work);
		if (!polling_rate)
			FUNC3(dev->client->irq);
	} else {
		/* TX */
		ret = FUNC4(dev->client, mbo->virt_address,
				      mbo->buffer_length);
		if (ret <= 0) {
			mbo->processed_length = 0;
			mbo->status = MBO_E_INVAL;
		} else {
			mbo->processed_length = mbo->buffer_length;
			mbo->status = MBO_SUCCESS;
		}
		mbo->complete(mbo);
	}

	return 0;
}