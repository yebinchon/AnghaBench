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
struct ad7192_state {int /*<<< orphan*/  conf; int /*<<< orphan*/  sd; int /*<<< orphan*/  mode; void* f_order; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7192_CONF_CHOP ; 
 int /*<<< orphan*/  AD7192_MODE_SINC3 ; 
 void* AD7192_NO_SYNC_FILTER ; 
 int /*<<< orphan*/  AD7192_REG_CONF ; 
 int /*<<< orphan*/  AD7192_REG_MODE ; 
 void* AD7192_SYNC3_FILTER ; 
 void* AD7192_SYNC4_FILTER ; 
 int FUNC0 (int*) ; 
 unsigned int U32_MAX ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ad7192_state*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ad7192_state *st,
				      int val, int val2)
{
	int freq_avail[4], i, ret, freq;
	unsigned int diff_new, diff_old;
	int idx = 0;

	diff_old = U32_MAX;
	freq = val * 1000 + val2;

	FUNC2(st, freq_avail);

	for (i = 0; i < FUNC0(freq_avail); i++) {
		diff_new = FUNC1(freq - freq_avail[i]);
		if (diff_new < diff_old) {
			diff_old = diff_new;
			idx = i;
		}
	}

	switch (idx) {
	case 0:
		st->f_order = AD7192_SYNC4_FILTER;
		st->mode &= ~AD7192_MODE_SINC3;

		st->conf |= AD7192_CONF_CHOP;
		break;
	case 1:
		st->f_order = AD7192_SYNC3_FILTER;
		st->mode |= AD7192_MODE_SINC3;

		st->conf |= AD7192_CONF_CHOP;
		break;
	case 2:
		st->f_order = AD7192_NO_SYNC_FILTER;
		st->mode &= ~AD7192_MODE_SINC3;

		st->conf &= ~AD7192_CONF_CHOP;
		break;
	case 3:
		st->f_order = AD7192_NO_SYNC_FILTER;
		st->mode |= AD7192_MODE_SINC3;

		st->conf &= ~AD7192_CONF_CHOP;
		break;
	}

	ret = FUNC3(&st->sd, AD7192_REG_MODE, 3, st->mode);
	if (ret < 0)
		return ret;

	return FUNC3(&st->sd, AD7192_REG_CONF, 3, st->conf);
}