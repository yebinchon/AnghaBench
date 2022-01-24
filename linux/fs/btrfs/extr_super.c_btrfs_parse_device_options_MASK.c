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
typedef  int /*<<< orphan*/  substring_t ;
struct btrfs_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct btrfs_device*) ; 
 int MAX_OPT_ARGS ; 
 int Opt_device ; 
 int FUNC1 (struct btrfs_device*) ; 
 struct btrfs_device* FUNC2 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  uuid_mutex ; 

__attribute__((used)) static int FUNC9(const char *options, fmode_t flags,
				      void *holder)
{
	substring_t args[MAX_OPT_ARGS];
	char *device_name, *opts, *orig, *p;
	struct btrfs_device *device = NULL;
	int error = 0;

	FUNC5(&uuid_mutex);

	if (!options)
		return 0;

	/*
	 * strsep changes the string, duplicate it because btrfs_parse_options
	 * gets called later
	 */
	opts = FUNC4(options, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;
	orig = opts;

	while ((p = FUNC8(&opts, ",")) != NULL) {
		int token;

		if (!*p)
			continue;

		token = FUNC7(p, tokens, args);
		if (token == Opt_device) {
			device_name = FUNC6(&args[0]);
			if (!device_name) {
				error = -ENOMEM;
				goto out;
			}
			device = FUNC2(device_name, flags,
					holder);
			FUNC3(device_name);
			if (FUNC0(device)) {
				error = FUNC1(device);
				goto out;
			}
		}
	}

out:
	FUNC3(orig);
	return error;
}