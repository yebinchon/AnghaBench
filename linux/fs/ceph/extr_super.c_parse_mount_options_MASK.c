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
struct ceph_options {int dummy; } ;
struct ceph_mount_options {int sb_flags; void* server_path; int /*<<< orphan*/  congestion_kb; int /*<<< orphan*/  max_readdir_bytes; int /*<<< orphan*/  max_readdir; int /*<<< orphan*/  caps_wanted_delay_max; int /*<<< orphan*/  caps_wanted_delay_min; void* snapdir_name; int /*<<< orphan*/  rasize; int /*<<< orphan*/  rsize; int /*<<< orphan*/  wsize; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT ; 
 int /*<<< orphan*/  CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT ; 
 int /*<<< orphan*/  CEPH_MAX_READDIR_BYTES_DEFAULT ; 
 int /*<<< orphan*/  CEPH_MAX_READDIR_DEFAULT ; 
 int /*<<< orphan*/  CEPH_MAX_READ_SIZE ; 
 int /*<<< orphan*/  CEPH_MAX_WRITE_SIZE ; 
 int /*<<< orphan*/  CEPH_MOUNT_OPT_DEFAULT ; 
 int /*<<< orphan*/  CEPH_RASIZE_DEFAULT ; 
 char const* CEPH_SNAPDIRNAME_DEFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ceph_options*) ; 
 int FUNC1 (struct ceph_options*) ; 
 struct ceph_options* FUNC2 (char*,char const*,char const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mount_options*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 void* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 struct ceph_mount_options* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_fsopt_token ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 char* FUNC9 (char const*,char) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(struct ceph_mount_options **pfsopt,
			       struct ceph_options **popt,
			       int flags, char *options,
			       const char *dev_name)
{
	struct ceph_mount_options *fsopt;
	const char *dev_name_end;
	int err;

	if (!dev_name || !*dev_name)
		return -EINVAL;

	fsopt = FUNC7(sizeof(*fsopt), GFP_KERNEL);
	if (!fsopt)
		return -ENOMEM;

	FUNC5("parse_mount_options %p, dev_name '%s'\n", fsopt, dev_name);

	fsopt->sb_flags = flags;
	fsopt->flags = CEPH_MOUNT_OPT_DEFAULT;

	fsopt->wsize = CEPH_MAX_WRITE_SIZE;
	fsopt->rsize = CEPH_MAX_READ_SIZE;
	fsopt->rasize = CEPH_RASIZE_DEFAULT;
	fsopt->snapdir_name = FUNC6(CEPH_SNAPDIRNAME_DEFAULT, GFP_KERNEL);
	if (!fsopt->snapdir_name) {
		err = -ENOMEM;
		goto out;
	}

	fsopt->caps_wanted_delay_min = CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT;
	fsopt->caps_wanted_delay_max = CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT;
	fsopt->max_readdir = CEPH_MAX_READDIR_DEFAULT;
	fsopt->max_readdir_bytes = CEPH_MAX_READDIR_BYTES_DEFAULT;
	fsopt->congestion_kb = FUNC3();

	/*
	 * Distinguish the server list from the path in "dev_name".
	 * Internally we do not include the leading '/' in the path.
	 *
	 * "dev_name" will look like:
	 *     <server_spec>[,<server_spec>...]:[<path>]
	 * where
	 *     <server_spec> is <ip>[:<port>]
	 *     <path> is optional, but if present must begin with '/'
	 */
	dev_name_end = FUNC9(dev_name, '/');
	if (dev_name_end) {
		if (FUNC10(dev_name_end) > 1) {
			fsopt->server_path = FUNC6(dev_name_end, GFP_KERNEL);
			if (!fsopt->server_path) {
				err = -ENOMEM;
				goto out;
			}
		}
	} else {
		dev_name_end = dev_name + FUNC10(dev_name);
	}
	err = -EINVAL;
	dev_name_end--;		/* back up to ':' separator */
	if (dev_name_end < dev_name || *dev_name_end != ':') {
		FUNC8("device name is missing path (no : separator in %s)\n",
				dev_name);
		goto out;
	}
	FUNC5("device name '%.*s'\n", (int)(dev_name_end - dev_name), dev_name);
	if (fsopt->server_path)
		FUNC5("server path '%s'\n", fsopt->server_path);

	*popt = FUNC2(options, dev_name, dev_name_end,
				 parse_fsopt_token, (void *)fsopt);
	if (FUNC0(*popt)) {
		err = FUNC1(*popt);
		goto out;
	}

	/* success */
	*pfsopt = fsopt;
	return 0;

out:
	FUNC4(fsopt);
	return err;
}