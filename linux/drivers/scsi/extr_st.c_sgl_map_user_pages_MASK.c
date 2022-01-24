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
struct rq_map_data {unsigned long offset; } ;
struct st_buffer {struct page** mapped_pages; struct rq_map_data map_data; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FOLL_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int READ ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (unsigned long,int const,int /*<<< orphan*/ ,struct page**) ; 
 int /*<<< orphan*/  FUNC2 (struct page**) ; 
 struct page** FUNC3 (unsigned int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct st_buffer *STbp,
			      const unsigned int max_pages, unsigned long uaddr,
			      size_t count, int rw)
{
	unsigned long end = (uaddr + count + PAGE_SIZE - 1) >> PAGE_SHIFT;
	unsigned long start = uaddr >> PAGE_SHIFT;
	const int nr_pages = end - start;
	int res, i, j;
	struct page **pages;
	struct rq_map_data *mdata = &STbp->map_data;

	/* User attempted Overflow! */
	if ((uaddr + count) < uaddr)
		return -EINVAL;

	/* Too big */
        if (nr_pages > max_pages)
		return -ENOMEM;

	/* Hmm? */
	if (count == 0)
		return 0;

	pages = FUNC3(max_pages, sizeof(*pages), GFP_KERNEL);
	if (pages == NULL)
		return -ENOMEM;

        /* Try to fault in all of the necessary pages */
        /* rw==READ means read from drive, write into memory area */
	res = FUNC1(uaddr, nr_pages, rw == READ ? FOLL_WRITE : 0,
				  pages);

	/* Errors and no page mapped should return here */
	if (res < nr_pages)
		goto out_unmap;

        for (i=0; i < nr_pages; i++) {
                /* FIXME: flush superflous for rw==READ,
                 * probably wrong function for rw==WRITE
                 */
		FUNC0(pages[i]);
        }

	mdata->offset = uaddr & ~PAGE_MASK;
	STbp->mapped_pages = pages;

	return nr_pages;
 out_unmap:
	if (res > 0) {
		for (j=0; j < res; j++)
			FUNC4(pages[j]);
		res = 0;
	}
	FUNC2(pages);
	return res;
}