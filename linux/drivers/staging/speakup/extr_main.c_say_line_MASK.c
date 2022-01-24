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
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u16 ;
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_BLANK ; 
 scalar_t__ SAY_LINE_INDENT ; 
 scalar_t__ SPACE ; 
 scalar_t__* buf ; 
 int FUNC0 (struct vc_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spk_punc_mask ; 
 int /*<<< orphan*/ * spk_punc_masks ; 
 size_t spk_reading_punc ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ this_speakup_key ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc)
{
	int i = FUNC0(vc);
	u16 *cp;
	u_short saved_punc_mask = spk_punc_mask;

	if (i == 0) {
		FUNC3("%s\n", FUNC1(MSG_BLANK));
		return;
	}
	buf[i++] = '\n';
	if (this_speakup_key == SAY_LINE_INDENT) {
		cp = buf;
		while (*cp == SPACE)
			cp++;
		FUNC3("%zd, ", (cp - buf) + 1);
	}
	spk_punc_mask = spk_punc_masks[spk_reading_punc];
	FUNC2(buf, i);
	spk_punc_mask = saved_punc_mask;
}