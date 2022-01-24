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
typedef  int /*<<< orphan*/  u32 ;
struct ccw1 {int /*<<< orphan*/  cda; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw1*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct ccw1 *ccw, u32 head, int len)
{
	if (!FUNC0(ccw))
		return 0;

	return FUNC1(ccw->cda, head, len);
}