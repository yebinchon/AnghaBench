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
struct smb_rqst {unsigned int rq_npages; struct page** rq_pages; int /*<<< orphan*/  rq_nvec; TYPE_1__* rq_iov; int /*<<< orphan*/  rq_tailsz; int /*<<< orphan*/  rq_pagesz; int /*<<< orphan*/  rq_offset; } ;
struct smb2_transform_hdr {int dummy; } ;
struct page {int dummy; } ;
struct TCP_Server_Info {int /*<<< orphan*/  cipher_type; } ;
struct TYPE_2__ {struct smb2_transform_hdr* iov_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int GFP_KERNEL ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct TCP_Server_Info*,int,struct smb_rqst*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smb2_transform_hdr*,unsigned int,struct smb_rqst*,int /*<<< orphan*/ ) ; 
 struct page** FUNC4 (unsigned int,int,int) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rqst*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct smb_rqst*) ; 
 scalar_t__ FUNC10 (struct TCP_Server_Info*,struct smb_rqst*) ; 

__attribute__((used)) static int
FUNC11(struct TCP_Server_Info *server, int num_rqst,
		       struct smb_rqst *new_rq, struct smb_rqst *old_rq)
{
	struct page **pages;
	struct smb2_transform_hdr *tr_hdr = new_rq[0].rq_iov[0].iov_base;
	unsigned int npages;
	unsigned int orig_len = 0;
	int i, j;
	int rc = -ENOMEM;

	for (i = 1; i < num_rqst; i++) {
		npages = old_rq[i - 1].rq_npages;
		pages = FUNC4(npages, sizeof(struct page *),
				      GFP_KERNEL);
		if (!pages)
			goto err_free;

		new_rq[i].rq_pages = pages;
		new_rq[i].rq_npages = npages;
		new_rq[i].rq_offset = old_rq[i - 1].rq_offset;
		new_rq[i].rq_pagesz = old_rq[i - 1].rq_pagesz;
		new_rq[i].rq_tailsz = old_rq[i - 1].rq_tailsz;
		new_rq[i].rq_iov = old_rq[i - 1].rq_iov;
		new_rq[i].rq_nvec = old_rq[i - 1].rq_nvec;

		orig_len += FUNC10(server, &old_rq[i - 1]);

		for (j = 0; j < npages; j++) {
			pages[j] = FUNC0(GFP_KERNEL|__GFP_HIGHMEM);
			if (!pages[j])
				goto err_free;
		}

		/* copy pages form the old */
		for (j = 0; j < npages; j++) {
			char *dst, *src;
			unsigned int offset, len;

			FUNC8(&new_rq[i], j, &len, &offset);

			dst = (char *) FUNC5(new_rq[i].rq_pages[j]) + offset;
			src = (char *) FUNC5(old_rq[i - 1].rq_pages[j]) + offset;

			FUNC7(dst, src, len);
			FUNC6(new_rq[i].rq_pages[j]);
			FUNC6(old_rq[i - 1].rq_pages[j]);
		}
	}

	/* fill the 1st iov with a transform header */
	FUNC3(tr_hdr, orig_len, old_rq, server->cipher_type);

	rc = FUNC2(server, num_rqst, new_rq, 1);
	FUNC1(FYI, "Encrypt message returned %d\n", rc);
	if (rc)
		goto err_free;

	return rc;

err_free:
	FUNC9(num_rqst - 1, &new_rq[1]);
	return rc;
}