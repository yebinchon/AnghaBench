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
struct usb_request {struct page* context; int /*<<< orphan*/  length; int /*<<< orphan*/  buf; } ;
struct page {int dummy; } ;
struct f_phonet {int /*<<< orphan*/  out_ep; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_NOMEMALLOC ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct usb_request*,int) ; 

__attribute__((used)) static int
FUNC5(struct f_phonet *fp, struct usb_request *req, gfp_t gfp_flags)
{
	struct page *page;
	int err;

	page = FUNC0(gfp_flags | __GFP_NOMEMALLOC);
	if (!page)
		return -ENOMEM;

	req->buf = FUNC1(page);
	req->length = PAGE_SIZE;
	req->context = page;

	err = FUNC4(fp->out_ep, req, gfp_flags);
	if (FUNC3(err))
		FUNC2(page);
	return err;
}