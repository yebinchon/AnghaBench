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
struct hmcdrv_ftp_cmdspec {scalar_t__ id; char* fname; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HMCDRV_FTP_NOOP ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 

__attribute__((used)) static int FUNC3(char *cmd, struct hmcdrv_ftp_cmdspec *ftp)
{
	char *start;
	int argc = 0;

	ftp->id = HMCDRV_FTP_NOOP;
	ftp->fname = NULL;

	while (*cmd != '\0') {

		while (FUNC2(*cmd))
			++cmd;

		if (*cmd == '\0')
			break;

		start = cmd;

		switch (argc) {
		case 0: /* 1st argument (FTP command) */
			while ((*cmd != '\0') && !FUNC2(*cmd))
				++cmd;
			ftp->id = FUNC0(start, cmd - start);
			break;
		case 1: /* 2nd / last argument (rest of line) */
			while ((*cmd != '\0') && !FUNC1(*cmd))
				++cmd;
			ftp->fname = start;
			/* fall through */
		default:
			*cmd = '\0';
			break;
		} /* switch */

		++argc;
	} /* while */

	if (!ftp->fname || (ftp->id == HMCDRV_FTP_NOOP))
		return -EINVAL;

	return 0;
}