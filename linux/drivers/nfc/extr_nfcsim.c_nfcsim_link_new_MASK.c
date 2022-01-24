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
struct nfcsim_link {int /*<<< orphan*/  recv_wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfcsim_link* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfcsim_link *FUNC3(void)
{
	struct nfcsim_link *link;

	link = FUNC1(sizeof(struct nfcsim_link), GFP_KERNEL);
	if (!link)
		return NULL;

	FUNC2(&link->lock);
	FUNC0(&link->recv_wait);

	return link;
}