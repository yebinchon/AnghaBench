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
struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_3__ {struct list_head* next; } ;
struct pnp_dev {int /*<<< orphan*/  id; struct pnp_card* card; TYPE_2__ card_list; TYPE_1__ global_list; } ;
struct list_head {struct list_head* next; } ;
struct pnp_card {struct list_head devices; } ;

/* Variables and functions */
 unsigned short ISAPNP_ANY_ID ; 
 struct pnp_dev* FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct pnp_dev* FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned short,unsigned short) ; 
 struct list_head pnp_global ; 

struct pnp_dev *FUNC5(struct pnp_card *card, unsigned short vendor,
			     unsigned short function, struct pnp_dev *from)
{
	char id[8];
	char any[8];

	FUNC4(id, vendor, function);
	FUNC4(any, ISAPNP_ANY_ID, ISAPNP_ANY_ID);
	if (card == NULL) {	/* look for a logical device from all cards */
		struct list_head *list;

		list = pnp_global.next;
		if (from)
			list = from->global_list.next;

		while (list != &pnp_global) {
			struct pnp_dev *dev = FUNC2(list);

			if (FUNC1(dev->id, id) ||
			    (FUNC3(id, any, 7) == 0))
				return dev;
			list = list->next;
		}
	} else {
		struct list_head *list;

		list = card->devices.next;
		if (from) {
			list = from->card_list.next;
			if (from->card != card)	/* something is wrong */
				return NULL;
		}
		while (list != &card->devices) {
			struct pnp_dev *dev = FUNC0(list);

			if (FUNC1(dev->id, id))
				return dev;
			list = list->next;
		}
	}
	return NULL;
}