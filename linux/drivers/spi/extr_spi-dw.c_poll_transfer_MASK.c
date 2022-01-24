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
struct dw_spi {scalar_t__ rx_end; scalar_t__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dw_spi*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_spi*) ; 

__attribute__((used)) static int FUNC3(struct dw_spi *dws)
{
	do {
		FUNC2(dws);
		FUNC1(dws);
		FUNC0();
	} while (dws->rx_end > dws->rx);

	return 0;
}