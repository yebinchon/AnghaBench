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
typedef  int umode_t ;
typedef  int u32 ;
struct v9fs_session_info {scalar_t__ nodev; } ;
struct p9_wstat {int mode; int /*<<< orphan*/  extension; } ;
typedef  int /*<<< orphan*/  ext ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int P9_DMDEVICE ; 
 int P9_DMDIR ; 
 int P9_DMNAMEDPIPE ; 
 int P9_DMSOCKET ; 
 int P9_DMSYMLINK ; 
 int S_IFBLK ; 
 int S_IFCHR ; 
 int S_IFDIR ; 
 int S_IFIFO ; 
 int S_IFLNK ; 
 int S_IFREG ; 
 int S_IFSOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v9fs_session_info*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct v9fs_session_info*) ; 

__attribute__((used)) static umode_t FUNC6(struct v9fs_session_info *v9ses,
			       struct p9_wstat *stat, dev_t *rdev)
{
	int res;
	u32 mode = stat->mode;

	*rdev = 0;
	res = FUNC2(v9ses, stat);

	if ((mode & P9_DMDIR) == P9_DMDIR)
		res |= S_IFDIR;
	else if ((mode & P9_DMSYMLINK) && (FUNC5(v9ses)))
		res |= S_IFLNK;
	else if ((mode & P9_DMSOCKET) && (FUNC5(v9ses))
		 && (v9ses->nodev == 0))
		res |= S_IFSOCK;
	else if ((mode & P9_DMNAMEDPIPE) && (FUNC5(v9ses))
		 && (v9ses->nodev == 0))
		res |= S_IFIFO;
	else if ((mode & P9_DMDEVICE) && (FUNC5(v9ses))
		 && (v9ses->nodev == 0)) {
		char type = 0, ext[32];
		int major = -1, minor = -1;

		FUNC4(ext, stat->extension, sizeof(ext));
		FUNC3(ext, "%c %i %i", &type, &major, &minor);
		switch (type) {
		case 'c':
			res |= S_IFCHR;
			break;
		case 'b':
			res |= S_IFBLK;
			break;
		default:
			FUNC1(P9_DEBUG_ERROR, "Unknown special type %c %s\n",
				 type, stat->extension);
		};
		*rdev = FUNC0(major, minor);
	} else
		res |= S_IFREG;

	return res;
}