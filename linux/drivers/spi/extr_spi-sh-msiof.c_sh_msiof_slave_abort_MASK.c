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
struct spi_controller {int dummy; } ;
struct sh_msiof_spi_priv {int slave_aborted; int /*<<< orphan*/  done_txdma; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sh_msiof_spi_priv* FUNC1 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC2(struct spi_controller *ctlr)
{
	struct sh_msiof_spi_priv *p = FUNC1(ctlr);

	p->slave_aborted = true;
	FUNC0(&p->done);
	FUNC0(&p->done_txdma);
	return 0;
}