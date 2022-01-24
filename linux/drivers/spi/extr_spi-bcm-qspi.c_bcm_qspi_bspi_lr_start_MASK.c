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
 int /*<<< orphan*/  BSPI_RAF_CTRL ; 
 int /*<<< orphan*/  BSPI_RAF_CTRL_START_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_qspi*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_qspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct bcm_qspi *qspi)
{
	FUNC0(qspi);
	FUNC1(qspi, BSPI, BSPI_RAF_CTRL,
		       BSPI_RAF_CTRL_START_MASK);
}