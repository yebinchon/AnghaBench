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
 unsigned short const DEFMASK ; 
 unsigned short const ENDDEF ; 
 unsigned short const SLEEPMSEC ; 
 int FUNC0 (struct ams369fg06*,unsigned short const,unsigned short const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short const) ; 

__attribute__((used)) static int FUNC2(struct ams369fg06 *lcd,
	const unsigned short *wbuf)
{
	int ret = 0, i = 0;

	while ((wbuf[i] & DEFMASK) != ENDDEF) {
		if ((wbuf[i] & DEFMASK) != SLEEPMSEC) {
			ret = FUNC0(lcd, wbuf[i], wbuf[i+1]);
			if (ret)
				break;
		} else {
			FUNC1(wbuf[i+1]);
		}
		i += 2;
	}

	return ret;
}