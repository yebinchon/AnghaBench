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
#define  RA_DOWN_ARROW 135 
#define  RA_FIND_NEXT_SENT 134 
#define  RA_FIND_PREV_SENT 133 
#define  RA_NEXT_LINE 132 
#define  RA_NEXT_SENT 131 
#define  RA_PREV_LINE 130 
#define  RA_PREV_SENT 129 
#define  RA_TIMER 128 
 int FUNC0 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct vc_data*,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct vc_data *vc, int command)
{
	int indcount, sentcount, rv, sn;

	switch (command) {
	case RA_NEXT_SENT:
		/* Get Current Sentence */
		FUNC4(&indcount, &sentcount);
		/*printk("%d %d  ", indcount, sentcount); */
		FUNC5(sentcount + 1);
		if (indcount == 1) {
			if (!FUNC3(sentcount + 1, 0)) {
				FUNC1(vc, RA_FIND_NEXT_SENT);
				return;
			}
			FUNC7(0);
		} else {
			sn = 0;
			if (!FUNC3(sentcount + 1, 1)) {
				sn = 1;
				FUNC5(sn);
			} else {
				FUNC7(0);
			}
			if (!FUNC3(sn, 0)) {
				FUNC1(vc, RA_FIND_NEXT_SENT);
				return;
			}
			FUNC7(0);
		}
		FUNC6(vc, RA_TIMER);
		break;
	case RA_PREV_SENT:
		break;
	case RA_NEXT_LINE:
		FUNC2(vc);
		break;
	case RA_PREV_LINE:
		break;
	case RA_DOWN_ARROW:
		if (FUNC0(vc, 0) == -1) {
			FUNC1(vc, RA_DOWN_ARROW);
		} else {
			FUNC3(0, 0);
			FUNC7(0);
			FUNC6(vc, RA_TIMER);
		}
		break;
	case RA_FIND_NEXT_SENT:
		rv = FUNC0(vc, 0);
		if (rv == -1)
			FUNC2(vc);
		if (rv == 0) {
			FUNC1(vc, RA_FIND_NEXT_SENT);
		} else {
			FUNC3(1, 0);
			FUNC7(0);
			FUNC6(vc, RA_TIMER);
		}
		break;
	case RA_FIND_PREV_SENT:
		break;
	case RA_TIMER:
		FUNC4(&indcount, &sentcount);
		if (indcount < 2)
			FUNC1(vc, RA_DOWN_ARROW);
		else
			FUNC6(vc, RA_TIMER);
		break;
	}
}