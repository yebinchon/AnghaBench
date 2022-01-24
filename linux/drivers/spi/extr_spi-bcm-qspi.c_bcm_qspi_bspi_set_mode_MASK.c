#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int nbytes; } ;
struct TYPE_5__ {int buswidth; } ;
struct spi_mem_op {TYPE_2__ addr; TYPE_1__ data; } ;
struct TYPE_8__ {int flex_mode; int width; int addrlen; int hp; } ;
struct bcm_qspi {int s3_strap_override_ctrl; TYPE_4__ xfer_mode; int /*<<< orphan*/  curr_cs; TYPE_3__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSPI ; 
 int /*<<< orphan*/  BSPI_FLEX_MODE_ENABLE ; 
 int /*<<< orphan*/  BSPI_STRAP_OVERRIDE_CTRL ; 
 int BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE ; 
 int SPI_NBITS_SINGLE ; 
 int FUNC0 (struct bcm_qspi*,struct spi_mem_op const*,int) ; 
 int FUNC1 (struct bcm_qspi*,struct spi_mem_op const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_qspi*) ; 
 int FUNC3 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct bcm_qspi *qspi,
				  const struct spi_mem_op *op, int hp)
{
	int error = 0;
	int width = op->data.buswidth ? op->data.buswidth : SPI_NBITS_SINGLE;
	int addrlen = op->addr.nbytes;

	/* default mode */
	qspi->xfer_mode.flex_mode = true;

	if (!FUNC2(qspi)) {
		u32 val, mask;

		val = FUNC3(qspi, BSPI, BSPI_STRAP_OVERRIDE_CTRL);
		mask = BSPI_STRAP_OVERRIDE_CTRL_OVERRIDE;
		if (val & mask || qspi->s3_strap_override_ctrl & mask) {
			qspi->xfer_mode.flex_mode = false;
			FUNC4(qspi, BSPI, BSPI_FLEX_MODE_ENABLE, 0);
			error = FUNC1(qspi, op, hp);
		}
	}

	if (qspi->xfer_mode.flex_mode)
		error = FUNC0(qspi, op, hp);

	if (error) {
		FUNC6(&qspi->pdev->dev,
			 "INVALID COMBINATION: width=%d addrlen=%d hp=%d\n",
			 width, addrlen, hp);
	} else if (qspi->xfer_mode.width != width ||
		   qspi->xfer_mode.addrlen != addrlen ||
		   qspi->xfer_mode.hp != hp) {
		qspi->xfer_mode.width = width;
		qspi->xfer_mode.addrlen = addrlen;
		qspi->xfer_mode.hp = hp;
		FUNC5(&qspi->pdev->dev,
			"cs:%d %d-lane output, %d-byte address%s\n",
			qspi->curr_cs,
			qspi->xfer_mode.width,
			qspi->xfer_mode.addrlen,
			qspi->xfer_mode.hp != -1 ? ", hp mode" : "");
	}

	return error;
}