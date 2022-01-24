#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct most_interface {int dummy; } ;
struct mbo {int /*<<< orphan*/  (* complete ) (struct mbo*) ;int /*<<< orphan*/  status; scalar_t__ processed_length; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  dwork; } ;
struct hdm_i2c {TYPE_2__ rx; TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CH_RX ; 
 int /*<<< orphan*/  MBO_E_CLOSE ; 
 int NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hdm_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mbo* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  polling_rate ; 
 int /*<<< orphan*/  FUNC6 (struct mbo*) ; 
 struct hdm_i2c* FUNC7 (struct most_interface*) ; 

__attribute__((used)) static int FUNC8(struct most_interface *most_iface,
			  int ch_idx)
{
	struct hdm_i2c *dev = FUNC7(most_iface);
	struct mbo *mbo;

	FUNC0(ch_idx < 0 || ch_idx >= NUM_CHANNELS);

	if (ch_idx == CH_RX) {
		if (!polling_rate)
			FUNC2(dev->client->irq, dev);
		FUNC1(&dev->rx.dwork);

		while (!FUNC4(&dev->rx.list)) {
			mbo = FUNC5(&dev->rx.list);
			FUNC3(&mbo->list);

			mbo->processed_length = 0;
			mbo->status = MBO_E_CLOSE;
			mbo->complete(mbo);
		}
	}

	return 0;
}