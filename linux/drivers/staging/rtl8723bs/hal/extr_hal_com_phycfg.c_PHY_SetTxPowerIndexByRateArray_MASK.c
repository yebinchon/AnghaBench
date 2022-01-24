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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int dummy; } ;
typedef  enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(
	struct adapter *padapter,
	u8 RFPath,
	enum CHANNEL_WIDTH BandWidth,
	u8 Channel,
	u8 *Rates,
	u8 RateArraySize
)
{
	u32 powerIndex = 0;
	int	i = 0;

	for (i = 0; i < RateArraySize; ++i) {
		powerIndex = FUNC0(padapter, RFPath, Rates[i], BandWidth, Channel);
		FUNC1(padapter, powerIndex, RFPath, Rates[i]);
	}
}