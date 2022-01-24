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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;

/* Variables and functions */
 int ESCD_FUNCTION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  PNP_DS ; 
 int /*<<< orphan*/  PNP_READ_ESCD ; 
 int /*<<< orphan*/  PNP_TS1 ; 
 int /*<<< orphan*/  PNP_TS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(char *data, u32 nvram_base)
{
	u16 status;

	if (!FUNC2())
		return ESCD_FUNCTION_NOT_SUPPORTED;
	status = FUNC1(PNP_READ_ESCD, 0, PNP_TS1, PNP_TS2, PNP_DS, 0, 0,
			       0, data, 65536, FUNC0(nvram_base), 65536);
	return status;
}