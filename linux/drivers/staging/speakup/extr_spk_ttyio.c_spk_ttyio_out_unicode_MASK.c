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
typedef  int u16 ;
struct spk_synth {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct spk_synth*,int) ; 

__attribute__((used)) static int FUNC1(struct spk_synth *in_synth, u16 ch)
{
	int ret;

	if (ch < 0x80) {
		ret = FUNC0(in_synth, ch);
	} else if (ch < 0x800) {
		ret  = FUNC0(in_synth, 0xc0 | (ch >> 6));
		ret &= FUNC0(in_synth, 0x80 | (ch & 0x3f));
	} else {
		ret  = FUNC0(in_synth, 0xe0 | (ch >> 12));
		ret &= FUNC0(in_synth, 0x80 | ((ch >> 6) & 0x3f));
		ret &= FUNC0(in_synth, 0x80 | (ch & 0x3f));
	}
	return ret;
}