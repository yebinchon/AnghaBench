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
struct adapter {int dummy; } ;

/* Variables and functions */
 int NumRates ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct adapter*,unsigned char*) ; 

void FUNC3(struct adapter *padapter, unsigned char *pbssrate, int *bssrate_len)
{
	unsigned char supportedrates[NumRates];

	FUNC1(supportedrates, 0, NumRates);
	*bssrate_len = FUNC2(padapter, supportedrates);
	FUNC0(pbssrate, supportedrates, *bssrate_len);
}