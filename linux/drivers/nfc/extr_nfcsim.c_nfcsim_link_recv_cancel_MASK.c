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
struct nfcsim_link {int /*<<< orphan*/  lock; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFCSIM_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfcsim_link*) ; 

__attribute__((used)) static void FUNC3(struct nfcsim_link *link)
{
	FUNC0(&link->lock);

	link->mode = NFCSIM_MODE_NONE;

	FUNC1(&link->lock);

	FUNC2(link);
}