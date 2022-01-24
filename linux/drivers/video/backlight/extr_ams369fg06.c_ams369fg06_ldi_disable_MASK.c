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
struct ams369fg06 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned short const**) ; 
 int FUNC1 (struct ams369fg06*,unsigned short const*) ; 
#define  seq_display_off 129 
#define  seq_stand_by_on 128 

__attribute__((used)) static int FUNC2(struct ams369fg06 *lcd)
{
	int ret, i;

	static const unsigned short *init_seq[] = {
		seq_display_off,
		seq_stand_by_on,
	};

	for (i = 0; i < FUNC0(init_seq); i++) {
		ret = FUNC1(lcd, init_seq[i]);
		if (ret)
			break;
	}

	return ret;
}