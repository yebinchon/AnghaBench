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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_BLANK ; 
 int /*<<< orphan*/ * buf ; 
 int FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int spk_parked ; 
 int spk_pos ; 
 int spk_x ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc)
{
	int len = FUNC0(vc);
	u16 ch;

	spk_parked |= 0x01;
	if (len == 0) {
		FUNC3("%s\n", FUNC2(MSG_BLANK));
		return;
	}
	ch = buf[--len];
	spk_pos -= (spk_x - len) * 2;
	spk_x = len;
	FUNC3("%d, ", ++len);
	FUNC1(ch);
}