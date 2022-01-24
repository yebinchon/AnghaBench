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
struct pnp_protocol {int /*<<< orphan*/  number; int /*<<< orphan*/  dev; } ;
struct pnp_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/ * parent; } ;
struct pnp_card {int number; TYPE_1__ dev; struct pnp_protocol* protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_card*) ; 
 struct pnp_card* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct pnp_id* FUNC4 (struct pnp_card*,char*) ; 

struct pnp_card *FUNC5(struct pnp_protocol *protocol, int id, char *pnpid)
{
	struct pnp_card *card;
	struct pnp_id *dev_id;

	card = FUNC3(sizeof(struct pnp_card), GFP_KERNEL);
	if (!card)
		return NULL;

	card->protocol = protocol;
	card->number = id;

	card->dev.parent = &card->protocol->dev;
	FUNC1(&card->dev, "%02x:%02x", card->protocol->number, card->number);

	card->dev.coherent_dma_mask = FUNC0(24);
	card->dev.dma_mask = &card->dev.coherent_dma_mask;

	dev_id = FUNC4(card, pnpid);
	if (!dev_id) {
		FUNC2(card);
		return NULL;
	}

	return card;
}