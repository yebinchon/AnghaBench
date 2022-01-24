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
struct pcmcia_device {unsigned int irq; TYPE_1__** resource; int /*<<< orphan*/  dev; int /*<<< orphan*/ * prod_id; } ;
typedef  int /*<<< orphan*/  devname ;
struct TYPE_2__ {unsigned int start; } ;

/* Variables and functions */
#define  AVM_CARDTYPE_B1 130 
#define  AVM_CARDTYPE_M1 129 
#define  AVM_CARDTYPE_M2 128 
 int ENODEV ; 
 int /*<<< orphan*/  avmcs_configcheck ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_device*) ; 
 int FUNC6 (struct pcmcia_device*) ; 
 scalar_t__ FUNC7 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC10 (char*,char) ; 
 int FUNC11 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct pcmcia_device *link)
{
	int i = -1;
	char devname[128];
	int cardtype;
	int (*addcard)(unsigned int port, unsigned irq);

	devname[0] = 0;
	if (link->prod_id[1])
		FUNC9(devname, link->prod_id[1], sizeof(devname));

	/*
	 * find IO port
	 */
	if (FUNC7(link, avmcs_configcheck, NULL))
		return -ENODEV;

	do {
		if (!link->irq) {
			/* undo */
			FUNC5(link);
			break;
		}

		/*
		 * configure the PCMCIA socket
		 */
		i = FUNC6(link);
		if (i != 0) {
			FUNC5(link);
			break;
		}

	} while (0);

	if (devname[0]) {
		char *s = FUNC10(devname, ' ');
		if (!s)
			s = devname;
		else s++;
		if (FUNC8("M1", s) == 0) {
			cardtype = AVM_CARDTYPE_M1;
		} else if (FUNC8("M2", s) == 0) {
			cardtype = AVM_CARDTYPE_M2;
		} else {
			cardtype = AVM_CARDTYPE_B1;
		}
	} else
		cardtype = AVM_CARDTYPE_B1;

	/* If any step failed, release any partially configured state */
	if (i != 0) {
		FUNC0(link);
		return -ENODEV;
	}


	switch (cardtype) {
	case AVM_CARDTYPE_M1: addcard = b1pcmcia_addcard_m1; break;
	case AVM_CARDTYPE_M2: addcard = b1pcmcia_addcard_m2; break;
	default:
	case AVM_CARDTYPE_B1: addcard = b1pcmcia_addcard_b1; break;
	}
	if ((i = (*addcard)(link->resource[0]->start, link->irq)) < 0) {
		FUNC4(&link->dev,
			"avm_cs: failed to add AVM-Controller at i/o %#x, irq %d\n",
			(unsigned int) link->resource[0]->start, link->irq);
		FUNC0(link);
		return -ENODEV;
	}
	return 0;

}