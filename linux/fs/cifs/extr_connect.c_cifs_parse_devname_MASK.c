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
struct smb_vol {int /*<<< orphan*/  prepath; int /*<<< orphan*/  UNC; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*,char const*) ; 
 size_t FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(const char *devname, struct smb_vol *vol)
{
	char *pos;
	const char *delims = "/\\";
	size_t len;

	if (FUNC7(!devname || !*devname)) {
		FUNC0(VFS, "Device name not specified.\n");
		return -EINVAL;
	}

	/* make sure we have a valid UNC double delimiter prefix */
	len = FUNC6(devname, delims);
	if (len != 2)
		return -EINVAL;

	/* find delimiter between host and sharename */
	pos = FUNC5(devname + 2, delims);
	if (!pos)
		return -EINVAL;

	/* skip past delimiter */
	++pos;

	/* now go until next delimiter or end of string */
	len = FUNC4(pos, delims);

	/* move "pos" up to delimiter or NULL */
	pos += len;
	vol->UNC = FUNC3(devname, pos - devname, GFP_KERNEL);
	if (!vol->UNC)
		return -ENOMEM;

	FUNC1(vol->UNC, '\\');

	/* skip any delimiter */
	if (*pos == '/' || *pos == '\\')
		pos++;

	/* If pos is NULL then no prepath */
	if (!*pos)
		return 0;

	vol->prepath = FUNC2(pos, GFP_KERNEL);
	if (!vol->prepath)
		return -ENOMEM;

	return 0;
}