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
struct hmcdrv_ftp_cmdspec {int /*<<< orphan*/  id; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; int /*<<< orphan*/  ofs; int /*<<< orphan*/  fname; } ;
struct diag_ftp_ldfpl {int transferred; size_t fsize; int /*<<< orphan*/  bufaddr; int /*<<< orphan*/  buflen; int /*<<< orphan*/  offset; int /*<<< orphan*/  fident; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  DIAG_FTP_STAT_LDFAIL 131 
#define  DIAG_FTP_STAT_LDNPERM 130 
#define  DIAG_FTP_STAT_LDRUNS 129 
#define  DIAG_FTP_STAT_OK 128 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPERM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int HMCDRV_FTP_FIDENT_MAX ; 
 unsigned long HZ ; 
 int FUNC0 (struct diag_ftp_ldfpl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diag_ftp_rx_complete ; 
 int diag_ftp_subcode ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

ssize_t FUNC8(const struct hmcdrv_ftp_cmdspec *ftp, size_t *fsize)
{
	struct diag_ftp_ldfpl *ldfpl;
	ssize_t len;
#ifdef DEBUG
	unsigned long start_jiffies;

	pr_debug("starting DIAG X'2C4' on '%s', requesting %zd bytes\n",
		 ftp->fname, ftp->len);
	start_jiffies = jiffies;
#endif
	FUNC3(&diag_ftp_rx_complete);

	ldfpl = (void *) FUNC2(GFP_KERNEL | GFP_DMA);
	if (!ldfpl) {
		len = -ENOMEM;
		goto out;
	}

	len = FUNC5(ldfpl->fident, ftp->fname, sizeof(ldfpl->fident));
	if (len >= HMCDRV_FTP_FIDENT_MAX) {
		len = -EINVAL;
		goto out_free;
	}

	ldfpl->transferred = 0;
	ldfpl->fsize = 0;
	ldfpl->offset = ftp->ofs;
	ldfpl->buflen = ftp->len;
	ldfpl->bufaddr = FUNC6(ftp->buf);

	len = FUNC0(ldfpl, ftp->id);
	if (len)
		goto out_free;

	/*
	 * There is no way to cancel the running diag X'2C4', the code
	 * needs to wait unconditionally until the transfer is complete.
	 */
	FUNC7(&diag_ftp_rx_complete);

#ifdef DEBUG
	pr_debug("completed DIAG X'2C4' after %lu ms\n",
		 (jiffies - start_jiffies) * 1000 / HZ);
	pr_debug("status of DIAG X'2C4' is %u, with %lld/%lld bytes\n",
		 diag_ftp_subcode, ldfpl->transferred, ldfpl->fsize);
#endif

	switch (diag_ftp_subcode) {
	case DIAG_FTP_STAT_OK: /* success */
		len = ldfpl->transferred;
		if (fsize)
			*fsize = ldfpl->fsize;
		break;
	case DIAG_FTP_STAT_LDNPERM:
		len = -EPERM;
		break;
	case DIAG_FTP_STAT_LDRUNS:
		len = -EBUSY;
		break;
	case DIAG_FTP_STAT_LDFAIL:
		len = -ENOENT; /* no such file or media */
		break;
	default:
		len = -EIO;
		break;
	}

out_free:
	FUNC1((unsigned long) ldfpl);
out:
	return len;
}