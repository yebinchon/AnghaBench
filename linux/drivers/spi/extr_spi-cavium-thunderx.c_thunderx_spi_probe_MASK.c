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
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int num_chipselect; int mode_bits; TYPE_2__ dev; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  transfer_one_message; } ;
struct pci_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_3__ {int config; int status; int tx; int data; } ;
struct octeon_spi {int /*<<< orphan*/  clk; scalar_t__ sys_freq; TYPE_1__ regs; int /*<<< orphan*/  register_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_SPI_MAX_CLOCK_HZ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_3WIRE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 scalar_t__ SYS_FREQ_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,struct spi_master*) ; 
 int /*<<< orphan*/  octeon_spi_transfer_one_message ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct spi_master*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC14 (struct device*,int) ; 
 struct octeon_spi* FUNC15 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_master*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
			      const struct pci_device_id *ent)
{
	struct device *dev = &pdev->dev;
	struct spi_master *master;
	struct octeon_spi *p;
	int ret;

	master = FUNC14(dev, sizeof(struct octeon_spi));
	if (!master)
		return -ENOMEM;

	p = FUNC15(master);

	ret = FUNC12(pdev);
	if (ret)
		goto error;

	ret = FUNC9(pdev, DRV_NAME);
	if (ret)
		goto error;

	p->register_base = FUNC13(pdev, 0, FUNC10(pdev, 0));
	if (!p->register_base) {
		ret = -EINVAL;
		goto error;
	}

	p->regs.config = 0x1000;
	p->regs.status = 0x1008;
	p->regs.tx = 0x1010;
	p->regs.data = 0x1080;

	p->clk = FUNC7(dev, NULL);
	if (FUNC0(p->clk)) {
		ret = FUNC1(p->clk);
		goto error;
	}

	ret = FUNC5(p->clk);
	if (ret)
		goto error;

	p->sys_freq = FUNC4(p->clk);
	if (!p->sys_freq)
		p->sys_freq = SYS_FREQ_DEFAULT;
	FUNC6(dev, "Set system clock to %u\n", p->sys_freq);

	master->num_chipselect = 4;
	master->mode_bits = SPI_CPHA | SPI_CPOL | SPI_CS_HIGH |
			    SPI_LSB_FIRST | SPI_3WIRE;
	master->transfer_one_message = octeon_spi_transfer_one_message;
	master->bits_per_word_mask = FUNC2(8);
	master->max_speed_hz = OCTEON_SPI_MAX_CLOCK_HZ;
	master->dev.of_node = pdev->dev.of_node;

	FUNC11(pdev, master);

	ret = FUNC8(dev, master);
	if (ret)
		goto error;

	return 0;

error:
	FUNC3(p->clk);
	FUNC16(master);
	return ret;
}