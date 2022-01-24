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
struct list_head {int dummy; } ;
struct bfa_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*,int) ; 
 struct list_head* FUNC1 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 

__attribute__((used)) static inline void
FUNC4(struct bfa_s *bfa, int qid)
{
	struct list_head *waitq;

	FUNC0(bfa, qid);

	/*
	 * Resume any pending requests in the corresponding reqq.
	 */
	waitq = FUNC1(bfa, qid);
	if (!FUNC3(waitq))
		FUNC2(bfa, qid);
}