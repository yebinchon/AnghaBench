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
struct ad2s1210_state {int resolution; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned char AD2S1210_DEF_CONTROL ; 
 int AD2S1210_MSB_IS_HIGH ; 
 unsigned char AD2S1210_REG_CONTROL ; 
 unsigned char AD2S1210_SET_RESOLUTION ; 
 int EIO ; 
 int FUNC0 (struct ad2s1210_state*,unsigned char) ; 
 int FUNC1 (struct ad2s1210_state*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct ad2s1210_state*) ; 
 int FUNC3 (struct ad2s1210_state*) ; 
 int FUNC4 (struct ad2s1210_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ad2s1210_state *st)
{
	unsigned char data;
	int ret;

	FUNC5(&st->lock);
	FUNC2(st);

	ret = FUNC1(st, AD2S1210_REG_CONTROL);
	if (ret < 0)
		goto error_ret;
	data = AD2S1210_DEF_CONTROL & ~(AD2S1210_SET_RESOLUTION);
	data |= (st->resolution - 10) >> 1;
	ret = FUNC1(st, data);
	if (ret < 0)
		goto error_ret;
	ret = FUNC0(st, AD2S1210_REG_CONTROL);
	if (ret < 0)
		goto error_ret;

	if (ret & AD2S1210_MSB_IS_HIGH) {
		ret = -EIO;
		goto error_ret;
	}

	ret = FUNC4(st);
	if (ret < 0)
		goto error_ret;
	ret = FUNC3(st);
error_ret:
	FUNC6(&st->lock);
	return ret;
}