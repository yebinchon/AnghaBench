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
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OP_ENDPTCOMPLETE ; 
 int FUNC1 (struct ci_hdrc*,int) ; 
 int FUNC2 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ci_hdrc *ci, int n)
{
	n = FUNC1(ci, n);
	return FUNC2(ci, OP_ENDPTCOMPLETE, FUNC0(n));
}