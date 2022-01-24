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
struct cifs_writedata {int /*<<< orphan*/  pages; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 struct cifs_writedata* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cifs_writev_complete ; 
 unsigned int FUNC1 (struct address_space*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cifs_writedata *
FUNC2(pgoff_t tofind, struct address_space *mapping,
			  pgoff_t end, pgoff_t *index,
			  unsigned int *found_pages)
{
	struct cifs_writedata *wdata;

	wdata = FUNC0((unsigned int)tofind,
				     cifs_writev_complete);
	if (!wdata)
		return NULL;

	*found_pages = FUNC1(mapping, index, end,
				PAGECACHE_TAG_DIRTY, tofind, wdata->pages);
	return wdata;
}