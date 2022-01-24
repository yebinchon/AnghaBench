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
struct spi_transfer {scalar_t__ len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int /*<<< orphan*/  chip_select; } ;
struct TYPE_3__ {scalar_t__ byte; struct spi_transfer* trans; } ;
struct bcm_qspi {TYPE_2__* pdev; int /*<<< orphan*/  mspi_done; TYPE_1__ trans_pos; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_qspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_qspi*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bcm_qspi* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct bcm_qspi*,struct spi_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_master *master,
				 struct spi_device *spi,
				 struct spi_transfer *trans)
{
	struct bcm_qspi *qspi = FUNC6(master);
	int slots;
	unsigned long timeo = FUNC3(100);

	FUNC0(qspi, spi->chip_select);
	qspi->trans_pos.trans = trans;
	qspi->trans_pos.byte = 0;

	while (qspi->trans_pos.byte < trans->len) {
		FUNC5(&qspi->mspi_done);

		slots = FUNC8(qspi, spi);
		if (!FUNC7(&qspi->mspi_done, timeo)) {
			FUNC2(&qspi->pdev->dev, "timeout waiting for MSPI\n");
			return -ETIMEDOUT;
		}

		FUNC4(qspi, slots);
	}
	FUNC1(qspi);

	return 0;
}