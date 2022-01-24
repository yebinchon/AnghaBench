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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_HEY_THATS_BETTER ; 
 int /*<<< orphan*/  MSG_YOU_TURNED_ME_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int spk_shut_up ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc)
{
	if (spk_shut_up & 0x80) {
		spk_shut_up &= 0x7f;
		FUNC2("%s\n", FUNC1(MSG_HEY_THATS_BETTER));
	} else {
		spk_shut_up |= 0x80;
		FUNC2("%s\n", FUNC1(MSG_YOU_TURNED_ME_OFF));
	}
	FUNC0(vc);
}