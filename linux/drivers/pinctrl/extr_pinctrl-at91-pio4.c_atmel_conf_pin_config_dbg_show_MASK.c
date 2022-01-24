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
typedef  int u32 ;
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct atmel_pioctrl {TYPE_1__** pins; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioset; int /*<<< orphan*/  device; } ;

/* Variables and functions */
#define  ATMEL_PIO_DRVSTR_HI 129 
 int ATMEL_PIO_DRVSTR_MASK ; 
#define  ATMEL_PIO_DRVSTR_ME 128 
 int ATMEL_PIO_DRVSTR_OFFSET ; 
 int ATMEL_PIO_IFEN_MASK ; 
 int ATMEL_PIO_OPD_MASK ; 
 int ATMEL_PIO_PDEN_MASK ; 
 int ATMEL_PIO_PUEN_MASK ; 
 int ATMEL_PIO_SCHMITT_MASK ; 
 int FUNC0 (struct pinctrl_dev*,unsigned int) ; 
 struct atmel_pioctrl* FUNC1 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct pinctrl_dev *pctldev,
					   struct seq_file *s, unsigned pin_id)
{
	struct atmel_pioctrl *atmel_pioctrl = FUNC1(pctldev);
	u32 conf;

	if (!atmel_pioctrl->pins[pin_id]->device)
		return;

	if (atmel_pioctrl->pins[pin_id])
		FUNC2(s, " (%s, ioset %u) ",
			   atmel_pioctrl->pins[pin_id]->device,
			   atmel_pioctrl->pins[pin_id]->ioset);

	conf = FUNC0(pctldev, pin_id);
	if (conf & ATMEL_PIO_PUEN_MASK)
		FUNC2(s, "%s ", "pull-up");
	if (conf & ATMEL_PIO_PDEN_MASK)
		FUNC2(s, "%s ", "pull-down");
	if (conf & ATMEL_PIO_IFEN_MASK)
		FUNC2(s, "%s ", "debounce");
	if (conf & ATMEL_PIO_OPD_MASK)
		FUNC2(s, "%s ", "open-drain");
	if (conf & ATMEL_PIO_SCHMITT_MASK)
		FUNC2(s, "%s ", "schmitt");
	if (conf & ATMEL_PIO_DRVSTR_MASK) {
		switch ((conf & ATMEL_PIO_DRVSTR_MASK) >> ATMEL_PIO_DRVSTR_OFFSET) {
		case ATMEL_PIO_DRVSTR_ME:
			FUNC2(s, "%s ", "medium-drive");
			break;
		case ATMEL_PIO_DRVSTR_HI:
			FUNC2(s, "%s ", "high-drive");
			break;
		/* ATMEL_PIO_DRVSTR_LO and 0 which is the default value at reset */
		default:
			FUNC2(s, "%s ", "low-drive");
		}
	}
}