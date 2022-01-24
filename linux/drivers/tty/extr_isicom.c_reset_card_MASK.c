#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct isi_board {unsigned long base; int port_count; int shift_count; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int const,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int const,unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 struct isi_board* FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev,
	const unsigned int card, unsigned int *signature)
{
	struct isi_board *board = FUNC7(pdev);
	unsigned long base = board->base;
	unsigned int sig, portcount = 0;
	int retval = 0;

	FUNC0(&pdev->dev, "ISILoad:Resetting Card%d at 0x%lx\n", card + 1,
		base);

	FUNC4(base + 0x8);

	FUNC5(10);

	FUNC6(0, base + 0x8); /* Reset */

	FUNC5(1000);

	sig = FUNC4(base + 0x4) & 0xff;

	if (sig != 0xa5 && sig != 0xbb && sig != 0xcc && sig != 0xdd &&
			sig != 0xee) {
		FUNC3(&pdev->dev, "ISILoad:Card%u reset failure (Possible "
			"bad I/O Port Address 0x%lx).\n", card + 1, base);
		FUNC0(&pdev->dev, "Sig=0x%x\n", sig);
		retval = -EIO;
		goto end;
	}

	FUNC5(10);

	portcount = FUNC4(base + 0x2);
	if (!(FUNC4(base + 0xe) & 0x1) || (portcount != 0 && portcount != 4 &&
				portcount != 8 && portcount != 16)) {
		FUNC1(&pdev->dev, "ISILoad:PCI Card%d reset failure.\n",
			card + 1);
		retval = -EIO;
		goto end;
	}

	switch (sig) {
	case 0xa5:
	case 0xbb:
	case 0xdd:
		board->port_count = (portcount == 4) ? 4 : 8;
		board->shift_count = 12;
		break;
	case 0xcc:
	case 0xee:
		board->port_count = 16;
		board->shift_count = 11;
		break;
	}
	FUNC2(&pdev->dev, "-Done\n");
	*signature = sig;

end:
	return retval;
}