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
struct tb {int /*<<< orphan*/  dev; } ;
struct icm {int veto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct icm* FUNC1 (struct tb*) ; 

__attribute__((used)) static void FUNC2(struct tb *tb)
{
	struct icm *icm = FUNC1(tb);

	if (!icm->veto) {
		icm->veto = true;
		/* Keep the domain powered while veto is in effect */
		FUNC0(&tb->dev);
	}
}