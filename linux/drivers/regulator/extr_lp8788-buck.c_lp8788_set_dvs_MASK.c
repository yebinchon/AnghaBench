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
struct lp8788_buck {int dummy; } ;
typedef  enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;

/* Variables and functions */
#define  BUCK1 129 
#define  BUCK2 128 
 int /*<<< orphan*/  FUNC0 (struct lp8788_buck*) ; 
 int /*<<< orphan*/  FUNC1 (struct lp8788_buck*) ; 

__attribute__((used)) static void FUNC2(struct lp8788_buck *buck, enum lp8788_buck_id id)
{
	switch (id) {
	case BUCK1:
		FUNC0(buck);
		break;
	case BUCK2:
		FUNC1(buck);
		break;
	default:
		break;
	}
}