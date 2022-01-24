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
typedef  int /*<<< orphan*/  u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int*,int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct adapter *padapter,
					 u8 *pbuf, u16 length)
{
	u8 *tmp = NULL;
	u8 res = false;

	if (length == 0)
		return;

	/* DBG_871X("+%s() length =%d\n", __func__, length); */

	tmp = FUNC3(length);
	if (!tmp)
		return;

	FUNC1(tmp, pbuf, length);

	res = FUNC2(padapter, tmp, length);

	if (!res)
		FUNC0(tmp);

	/* DBG_871X("-%s res(%d)\n", __func__, res); */

	return;
}