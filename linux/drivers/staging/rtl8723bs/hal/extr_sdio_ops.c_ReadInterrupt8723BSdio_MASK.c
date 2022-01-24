#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct adapter {int dummy; } ;
typedef  int s32 ;
struct TYPE_2__ {int sdio_himr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct adapter*) ; 
 scalar_t__ SDIO_REG_HISR ; 
 int FUNC1 (struct adapter*,scalar_t__) ; 

__attribute__((used)) static s32 FUNC2(struct adapter *adapter, u32 *phisr)
{
	u32 hisr, himr;
	u8 val8, hisr_len;


	if (!phisr)
		return false;

	himr = FUNC0(adapter)->sdio_himr;

	/*  decide how many bytes need to be read */
	hisr_len = 0;
	while (himr) {
		hisr_len++;
		himr >>= 8;
	}

	hisr = 0;
	while (hisr_len != 0) {
		hisr_len--;
		val8 = FUNC1(adapter, SDIO_REG_HISR + hisr_len);
		hisr |= (val8 << (8 * hisr_len));
	}

	*phisr = hisr;

	return true;
}