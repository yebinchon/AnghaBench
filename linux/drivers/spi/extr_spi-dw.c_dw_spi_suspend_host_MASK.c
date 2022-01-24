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
struct dw_spi {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_spi*) ; 

int FUNC2(struct dw_spi *dws)
{
	int ret;

	ret = FUNC0(dws->master);
	if (ret)
		return ret;

	FUNC1(dws);
	return 0;
}