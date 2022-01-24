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
struct bcm_qspi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSPI ; 
 int /*<<< orphan*/  BSPI_RAF_STATUS ; 
 int BSPI_RAF_STATUS_FIFO_EMPTY_MASK ; 
 int FUNC0 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct bcm_qspi *qspi)
{
	return (FUNC0(qspi, BSPI, BSPI_RAF_STATUS) &
				BSPI_RAF_STATUS_FIFO_EMPTY_MASK);
}