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
struct p9_rdir {int tail; int head; scalar_t__ buf; } ;
struct p9_fid {TYPE_1__* clnt; } ;
struct p9_dirent {int /*<<< orphan*/  d_off; int /*<<< orphan*/  d_type; int /*<<< orphan*/  qid; int /*<<< orphan*/  d_name; } ;
struct file {struct p9_fid* private_data; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
struct TYPE_2__ {int msize; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int P9_READDIRHDRSZ ; 
 int /*<<< orphan*/  FUNC0 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct p9_fid*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,int,struct p9_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct p9_rdir* FUNC5 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct dir_context *ctx)
{
	int err = 0;
	struct p9_fid *fid;
	int buflen;
	struct p9_rdir *rdir;
	struct p9_dirent curdirent;

	FUNC2(P9_DEBUG_VFS, "name %pD\n", file);
	fid = file->private_data;

	buflen = fid->clnt->msize - P9_READDIRHDRSZ;

	rdir = FUNC5(file, buflen);
	if (!rdir)
		return -ENOMEM;

	while (1) {
		if (rdir->tail == rdir->head) {
			err = FUNC1(fid, rdir->buf, buflen,
						ctx->pos);
			if (err <= 0)
				return err;

			rdir->head = 0;
			rdir->tail = err;
		}

		while (rdir->head < rdir->tail) {

			err = FUNC3(fid->clnt, rdir->buf + rdir->head,
					    rdir->tail - rdir->head,
					    &curdirent);
			if (err < 0) {
				FUNC2(P9_DEBUG_VFS, "returned %d\n", err);
				return -EIO;
			}

			if (!FUNC0(ctx, curdirent.d_name,
				      FUNC4(curdirent.d_name),
				      FUNC6(&curdirent.qid),
				      curdirent.d_type))
				return 0;

			ctx->pos = curdirent.d_off;
			rdir->head += err;
		}
	}
}