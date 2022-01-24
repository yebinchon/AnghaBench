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
struct zfcp_reqlist {int /*<<< orphan*/ * buckets; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int ZFCP_REQ_LIST_BUCKETS ; 
 struct zfcp_reqlist* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct zfcp_reqlist *FUNC3(void)
{
	unsigned int i;
	struct zfcp_reqlist *rl;

	rl = FUNC1(sizeof(struct zfcp_reqlist), GFP_KERNEL);
	if (!rl)
		return NULL;

	FUNC2(&rl->lock);

	for (i = 0; i < ZFCP_REQ_LIST_BUCKETS; i++)
		FUNC0(&rl->buckets[i]);

	return rl;
}