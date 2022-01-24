#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iov_iter {int type; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_aio_ctx {int direct_io; size_t len; int rc; int total_len; int /*<<< orphan*/  refcount; int /*<<< orphan*/  aio_mutex; int /*<<< orphan*/  done; int /*<<< orphan*/  list; struct iov_iter iter; int /*<<< orphan*/  pos; struct kiocb* iocb; int /*<<< orphan*/  cfile; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
typedef  int ssize_t ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  async_writev; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (struct file*) ; 
 int EINTR ; 
 int EIOCBQUEUED ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FYI ; 
 int ITER_KVEC ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct cifsFileInfo*) ; 
 struct cifs_aio_ctx* FUNC2 () ; 
 int /*<<< orphan*/  cifs_aio_ctx_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,struct iov_iter*,struct cifsFileInfo*,struct cifs_sb_info*,int /*<<< orphan*/ *,struct cifs_aio_ctx*) ; 
 int FUNC5 (struct kiocb*,struct iov_iter*) ; 
 size_t FUNC6 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct cifs_aio_ctx*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC16(
	struct kiocb *iocb, struct iov_iter *from, bool direct)
{
	struct file *file = iocb->ki_filp;
	ssize_t total_written = 0;
	struct cifsFileInfo *cfile;
	struct cifs_tcon *tcon;
	struct cifs_sb_info *cifs_sb;
	struct cifs_aio_ctx *ctx;
	struct iov_iter saved_from = *from;
	size_t len = FUNC6(from);
	int rc;

	/*
	 * iov_iter_get_pages_alloc doesn't work with ITER_KVEC.
	 * In this case, fall back to non-direct write function.
	 * this could be improved by getting pages directly in ITER_KVEC
	 */
	if (direct && from->type & ITER_KVEC) {
		FUNC3(FYI, "use non-direct cifs_writev for kvec I/O\n");
		direct = false;
	}

	rc = FUNC5(iocb, from);
	if (rc <= 0)
		return rc;

	cifs_sb = FUNC0(file);
	cfile = file->private_data;
	tcon = FUNC13(cfile->tlink);

	if (!tcon->ses->server->ops->async_writev)
		return -ENOSYS;

	ctx = FUNC2();
	if (!ctx)
		return -ENOMEM;

	ctx->cfile = FUNC1(cfile);

	if (!FUNC7(iocb))
		ctx->iocb = iocb;

	ctx->pos = iocb->ki_pos;

	if (direct) {
		ctx->direct_io = true;
		ctx->iter = *from;
		ctx->len = len;
	} else {
		rc = FUNC12(ctx, from, WRITE);
		if (rc) {
			FUNC8(&ctx->refcount, cifs_aio_ctx_release);
			return rc;
		}
	}

	/* grab a lock here due to read response handlers can access ctx */
	FUNC10(&ctx->aio_mutex);

	rc = FUNC4(iocb->ki_pos, ctx->len, &saved_from,
				  cfile, cifs_sb, &ctx->list, ctx);

	/*
	 * If at least one write was successfully sent, then discard any rc
	 * value from the later writes. If the other write succeeds, then
	 * we'll end up returning whatever was written. If it fails, then
	 * we'll get a new rc value from that.
	 */
	if (!FUNC9(&ctx->list))
		rc = 0;

	FUNC11(&ctx->aio_mutex);

	if (rc) {
		FUNC8(&ctx->refcount, cifs_aio_ctx_release);
		return rc;
	}

	if (!FUNC7(iocb)) {
		FUNC8(&ctx->refcount, cifs_aio_ctx_release);
		return -EIOCBQUEUED;
	}

	rc = FUNC15(&ctx->done);
	if (rc) {
		FUNC10(&ctx->aio_mutex);
		ctx->rc = rc = -EINTR;
		total_written = ctx->total_len;
		FUNC11(&ctx->aio_mutex);
	} else {
		rc = ctx->rc;
		total_written = ctx->total_len;
	}

	FUNC8(&ctx->refcount, cifs_aio_ctx_release);

	if (FUNC14(!total_written))
		return rc;

	iocb->ki_pos += total_written;
	return total_written;
}