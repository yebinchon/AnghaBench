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
struct esb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esb_dev*) ; 
 int /*<<< orphan*/  ESB_UNLOCK1 ; 
 int /*<<< orphan*/  ESB_UNLOCK2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct esb_dev *edev)
{
	FUNC1(ESB_UNLOCK1, FUNC0(edev));
	FUNC1(ESB_UNLOCK2, FUNC0(edev));
}