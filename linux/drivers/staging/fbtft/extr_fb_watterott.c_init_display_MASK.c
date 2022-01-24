#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  write_vmem; int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ fbtftops; TYPE_1__* info; TYPE_3__* spi; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INIT_DISPLAY ; 
 int /*<<< orphan*/  SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fbtft_par*,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int mode ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC6 (struct fbtft_par*,int) ; 
 int /*<<< orphan*/  write_vmem_8bit ; 

__attribute__((used)) static int FUNC7(struct fbtft_par *par)
{
	int ret;
	unsigned int version;
	u8 save_mode;

	/* enable SPI interface by having CS and MOSI low during reset */
	save_mode = par->spi->mode;
	par->spi->mode |= SPI_CS_HIGH;
	ret = FUNC4(par->spi); /* set CS inactive low */
	if (ret) {
		FUNC0(par->info->device, "Could not set SPI_CS_HIGH\n");
		return ret;
	}
	FUNC6(par, 0x00); /* make sure mode is set */

	FUNC3(50);
	par->fbtftops.reset(par);
	FUNC3(1000);
	par->spi->mode = save_mode;
	ret = FUNC4(par->spi);
	if (ret) {
		FUNC0(par->info->device, "Could not restore SPI mode\n");
		return ret;
	}
	FUNC6(par, 0x00);

	version = FUNC2(par);
	FUNC1(DEBUG_INIT_DISPLAY, par, "Firmware version: %x.%02x\n",
		      version >> 8, version & 0xFF);

	if (mode == 332)
		par->fbtftops.write_vmem = write_vmem_8bit;
	return 0;
}