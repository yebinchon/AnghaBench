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
struct ffs_data {int /*<<< orphan*/  stringtabs; int /*<<< orphan*/  raw_strings; int /*<<< orphan*/  raw_descs_data; scalar_t__ ffs_eventfd; int /*<<< orphan*/  eps_count; scalar_t__ epfiles; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_data*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ffs_data *ffs)
{
	FUNC1();

	FUNC3(ffs);

	FUNC0(ffs->gadget);

	if (ffs->epfiles)
		FUNC4(ffs->epfiles, ffs->eps_count);

	if (ffs->ffs_eventfd)
		FUNC2(ffs->ffs_eventfd);

	FUNC5(ffs->raw_descs_data);
	FUNC5(ffs->raw_strings);
	FUNC5(ffs->stringtabs);
}