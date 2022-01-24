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
struct TYPE_2__ {void* direction; } ;
struct most_channel {TYPE_1__ cfg; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENODEV ; 
 void* MOST_CH_RX ; 
 void* MOST_CH_TX ; 
 struct most_channel* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int FUNC3(char *mdev, char *mdev_ch, char *buf)
{
	struct most_channel *c = FUNC0(mdev, mdev_ch);

	if (!c)
		return -ENODEV;
	if (!FUNC2(buf, "dir_rx\n")) {
		c->cfg.direction = MOST_CH_RX;
	} else if (!FUNC2(buf, "rx\n")) {
		c->cfg.direction = MOST_CH_RX;
	} else if (!FUNC2(buf, "dir_tx\n")) {
		c->cfg.direction = MOST_CH_TX;
	} else if (!FUNC2(buf, "tx\n")) {
		c->cfg.direction = MOST_CH_TX;
	} else {
		FUNC1("Invalid direction\n");
		return -ENODATA;
	}
	return 0;
}