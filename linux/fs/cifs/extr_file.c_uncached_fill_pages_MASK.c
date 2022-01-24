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
struct page {int dummy; } ;
struct iov_iter {int dummy; } ;
struct cifs_readdata {unsigned int nr_pages; unsigned int page_offset; scalar_t__ got_bytes; unsigned int tailsz; unsigned int pagesz; scalar_t__ mr; struct page** pages; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int ECONNABORTED ; 
 unsigned int PAGE_SIZE ; 
 int FUNC0 (struct TCP_Server_Info*,struct page*,unsigned int,size_t) ; 
 int FUNC1 (struct page*,unsigned int,size_t,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static int
FUNC3(struct TCP_Server_Info *server,
		    struct cifs_readdata *rdata, struct iov_iter *iter,
		    unsigned int len)
{
	int result = 0;
	unsigned int i;
	unsigned int nr_pages = rdata->nr_pages;
	unsigned int page_offset = rdata->page_offset;

	rdata->got_bytes = 0;
	rdata->tailsz = PAGE_SIZE;
	for (i = 0; i < nr_pages; i++) {
		struct page *page = rdata->pages[i];
		size_t n;
		unsigned int segment_size = rdata->pagesz;

		if (i == 0)
			segment_size -= page_offset;
		else
			page_offset = 0;


		if (len <= 0) {
			/* no need to hold page hostage */
			rdata->pages[i] = NULL;
			rdata->nr_pages--;
			FUNC2(page);
			continue;
		}

		n = len;
		if (len >= segment_size)
			/* enough data to fill the page */
			n = segment_size;
		else
			rdata->tailsz = len;
		len -= n;

		if (iter)
			result = FUNC1(
					page, page_offset, n, iter);
#ifdef CONFIG_CIFS_SMB_DIRECT
		else if (rdata->mr)
			result = n;
#endif
		else
			result = FUNC0(
					server, page, page_offset, n);
		if (result < 0)
			break;

		rdata->got_bytes += result;
	}

	return rdata->got_bytes > 0 && result != -ECONNABORTED ?
						rdata->got_bytes : result;
}