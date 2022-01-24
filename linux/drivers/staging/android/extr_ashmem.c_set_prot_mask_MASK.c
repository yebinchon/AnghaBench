#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ashmem_area {unsigned long prot_mask; } ;
struct TYPE_2__ {int personality; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PROT_EXEC ; 
 unsigned long PROT_READ ; 
 int READ_IMPLIES_EXEC ; 
 int /*<<< orphan*/  ashmem_mutex ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ashmem_area *asma, unsigned long prot)
{
	int ret = 0;

	FUNC0(&ashmem_mutex);

	/* the user can only remove, not add, protection bits */
	if ((asma->prot_mask & prot) != prot) {
		ret = -EINVAL;
		goto out;
	}

	/* does the application expect PROT_READ to imply PROT_EXEC? */
	if ((prot & PROT_READ) && (current->personality & READ_IMPLIES_EXEC))
		prot |= PROT_EXEC;

	asma->prot_mask = prot;

out:
	FUNC1(&ashmem_mutex);
	return ret;
}