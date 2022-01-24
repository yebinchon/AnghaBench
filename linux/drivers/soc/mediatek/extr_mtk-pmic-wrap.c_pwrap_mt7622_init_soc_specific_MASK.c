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
struct pmic_wrapper {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWRAP_SPI2_CTRL ; 
 int /*<<< orphan*/  PWRAP_STAUPD_PRD ; 
 int /*<<< orphan*/  FUNC0 (struct pmic_wrapper*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pmic_wrapper *wrp)
{
	FUNC0(wrp, 0, PWRAP_STAUPD_PRD);
	/* enable 2wire SPI master */
	FUNC0(wrp, 0x8000000, PWRAP_SPI2_CTRL);

	return 0;
}