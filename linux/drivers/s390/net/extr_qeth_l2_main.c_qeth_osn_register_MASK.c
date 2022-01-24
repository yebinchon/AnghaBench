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
typedef  int u16 ;
struct TYPE_2__ {int (* assist_cb ) (struct net_device*,void*) ;int (* data_cb ) (struct sk_buff*) ;} ;
struct qeth_card {TYPE_1__ osn_info; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,unsigned char*,int) ; 
 struct qeth_card* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int FUNC5(unsigned char *read_dev_no, struct net_device **dev,
		  int (*assist_cb)(struct net_device *, void *),
		  int (*data_cb)(struct sk_buff *))
{
	struct qeth_card *card;
	char bus_id[16];
	u16 devno;

	FUNC2(&devno, read_dev_no, 2);
	FUNC4(bus_id, "0.0.%04x", devno);
	card = FUNC3(bus_id);
	if (!card || !FUNC0(card))
		return -ENODEV;
	*dev = card->dev;

	FUNC1(card, 2, "osnreg");
	if ((assist_cb == NULL) || (data_cb == NULL))
		return -EINVAL;
	card->osn_info.assist_cb = assist_cb;
	card->osn_info.data_cb = data_cb;
	return 0;
}