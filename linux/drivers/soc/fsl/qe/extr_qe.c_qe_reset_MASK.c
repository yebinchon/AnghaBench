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

/* Variables and functions */
 int /*<<< orphan*/  QE_CR_PROTOCOL_UNSPECIFIED ; 
 int /*<<< orphan*/  QE_CR_SUBBLOCK_INVALID ; 
 int /*<<< orphan*/  QE_IMMAP_SIZE ; 
 int /*<<< orphan*/  QE_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * qe_immr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	if (qe_immr == NULL)
		qe_immr = FUNC1(FUNC0(), QE_IMMAP_SIZE);

	FUNC6();

	FUNC3(QE_RESET, QE_CR_SUBBLOCK_INVALID,
		     QE_CR_PROTOCOL_UNSPECIFIED, 0);

	/* Reclaim the MURAM memory for our use. */
	FUNC4();

	if (FUNC5())
		FUNC2("sdma init failed!");
}