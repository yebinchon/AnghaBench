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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct spi_imx_data {int count; int tx_buf; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MXC_CSPITXDATA ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_imx_data *spi_imx)
{
	u32 val = 0;
	int n_bytes = spi_imx->count % sizeof(val);

	if (!n_bytes)
		n_bytes = sizeof(val);

	if (spi_imx->tx_buf) {
		FUNC1(((u8 *)&val) + sizeof(val) - n_bytes,
		       spi_imx->tx_buf, n_bytes);
		val = FUNC0(val);
		spi_imx->tx_buf += n_bytes;
	}

	spi_imx->count -= n_bytes;

	FUNC2(val, spi_imx->base + MXC_CSPITXDATA);
}