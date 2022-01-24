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
struct spi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*) ; 

__attribute__((used)) static void FUNC2(void *callback_param)
{
	struct spi_master *master = callback_param;

	FUNC0(master, DMA_TO_DEVICE);
	FUNC0(master, DMA_FROM_DEVICE);

	FUNC1(master);
}