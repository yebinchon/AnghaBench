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
struct p9_wstat {int /*<<< orphan*/  qid; int /*<<< orphan*/  name; } ;
struct p9_rdir {scalar_t__ buf; scalar_t__ tail; scalar_t__ head; } ;
struct p9_fid {TYPE_1__* clnt; } ;
struct kvec {scalar_t__ iov_base; int iov_len; } ;
struct iov_iter {int dummy; } ;
struct file {struct p9_fid* private_data; } ;
struct dir_context {int pos; } ;
struct TYPE_2__ {int msize; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int P9_IOHDRSZ ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC0 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,int) ; 
 int FUNC3 (struct p9_fid*,int,struct iov_iter*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_wstat*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,scalar_t__,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct p9_rdir* FUNC8 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct file *file, struct dir_context *ctx)
{
	bool over;
	struct p9_wstat st;
	int err = 0;
	struct p9_fid *fid;
	int buflen;
	struct p9_rdir *rdir;
	struct kvec kvec;

	FUNC4(P9_DEBUG_VFS, "name %pD\n", file);
	fid = file->private_data;

	buflen = fid->clnt->msize - P9_IOHDRSZ;

	rdir = FUNC8(file, buflen);
	if (!rdir)
		return -ENOMEM;
	kvec.iov_base = rdir->buf;
	kvec.iov_len = buflen;

	while (1) {
		if (rdir->tail == rdir->head) {
			struct iov_iter to;
			int n;
			FUNC2(&to, READ, &kvec, 1, buflen);
			n = FUNC3(file->private_data, ctx->pos, &to,
					   &err);
			if (err)
				return err;
			if (n == 0)
				return 0;

			rdir->head = 0;
			rdir->tail = n;
		}
		while (rdir->head < rdir->tail) {
			err = FUNC6(fid->clnt, rdir->buf + rdir->head,
					  rdir->tail - rdir->head, &st);
			if (err <= 0) {
				FUNC4(P9_DEBUG_VFS, "returned %d\n", err);
				return -EIO;
			}

			over = !FUNC0(ctx, st.name, FUNC7(st.name),
					 FUNC9(&st.qid), FUNC1(&st));
			FUNC5(&st);
			if (over)
				return 0;

			rdir->head += err;
			ctx->pos += err;
		}
	}
}