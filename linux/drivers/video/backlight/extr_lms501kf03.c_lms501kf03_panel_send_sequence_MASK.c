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
struct lms501kf03 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_ONLY ; 
 int /*<<< orphan*/  DATA_ONLY ; 
 int FUNC0 (struct lms501kf03*,int /*<<< orphan*/ ,unsigned char const) ; 

__attribute__((used)) static int FUNC1(struct lms501kf03 *lcd,
					const unsigned char *wbuf,
					unsigned int len)
{
	int ret = 0, i = 0;

	while (i < len) {
		if (i == 0)
			ret = FUNC0(lcd, COMMAND_ONLY, wbuf[i]);
		else
			ret = FUNC0(lcd, DATA_ONLY, wbuf[i]);
		if (ret)
			break;
		i += 1;
	}

	return ret;
}