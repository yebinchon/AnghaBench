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
typedef  int /*<<< orphan*/  u_short ;
typedef  size_t u_char ;
struct vc_data {int dummy; } ;
struct TYPE_2__ {short mask; } ;

/* Variables and functions */
 short B_NUM ; 
 size_t KT_LATIN ; 
 int /*<<< orphan*/  MSG_EDIT_DONE ; 
 int /*<<< orphan*/  MSG_OFF ; 
 int /*<<< orphan*/  MSG_ON ; 
 short PUNC ; 
 size_t SPACE ; 
 TYPE_1__* pb_edit ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 short* spk_chartab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * spk_special_handler ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vc_data *vc, u_char type, u_char ch, u_short key)
{
	short mask = pb_edit->mask, ch_type = spk_chartab[ch];

	if (type != KT_LATIN || (ch_type & B_NUM) || ch < SPACE)
		return -1;
	if (ch == SPACE) {
		FUNC2("%s\n", FUNC1(MSG_EDIT_DONE));
		spk_special_handler = NULL;
		return 1;
	}
	if (mask < PUNC && !(ch_type & PUNC))
		return -1;
	spk_chartab[ch] ^= mask;
	FUNC0(ch);
	FUNC2(" %s\n",
		     (spk_chartab[ch] & mask) ? FUNC1(MSG_ON) :
		     FUNC1(MSG_OFF));
	return 1;
}