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
typedef  int /*<<< orphan*/  u8 ;
struct mic_data {scalar_t__ nBytesInM; int /*<<< orphan*/  R; int /*<<< orphan*/  L; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mic_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct mic_data *pmicdata, u8 *dst)
{
	/*  Append the minimum padding */
	FUNC0(pmicdata, 0x5a);
	FUNC0(pmicdata, 0);
	FUNC0(pmicdata, 0);
	FUNC0(pmicdata, 0);
	FUNC0(pmicdata, 0);
	/*  and then zeroes until the length is a multiple of 4 */
	while (pmicdata->nBytesInM != 0) {
		FUNC0(pmicdata, 0);
	}
	/*  The appendByte function has already computed the result. */
	FUNC2(dst, pmicdata->L);
	FUNC2(dst+4, pmicdata->R);
	/*  Reset to the empty message. */
	FUNC1(pmicdata);
}