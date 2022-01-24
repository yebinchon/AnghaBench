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
struct lcs_card {int /*<<< orphan*/  kernel_thread_starter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_RECOVERY_THREAD ; 
 int /*<<< orphan*/  FUNC1 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC3(struct lcs_card *card)
{
	FUNC0(2, trace, "startrec");
	if (!FUNC1(card, LCS_RECOVERY_THREAD))
		FUNC2(&card->kernel_thread_starter);
}