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
struct fsg_config {int nluns; int /*<<< orphan*/ * luns; } ;
struct fsg_common {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_common*,int) ; 
 int FUNC1 (struct fsg_common*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_common*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

int FUNC5(struct fsg_common *common, struct fsg_config *cfg)
{
	char buf[8]; /* enough for 100000000 different numbers, decimal */
	int i, rc;

	FUNC2(common);

	for (i = 0; i < cfg->nluns; ++i) {
		FUNC4(buf, sizeof(buf), "lun%d", i);
		rc = FUNC1(common, &cfg->luns[i], i, buf, NULL);
		if (rc)
			goto fail;
	}

	FUNC3("Number of LUNs=%d\n", cfg->nluns);

	return 0;

fail:
	FUNC0(common, i);
	return rc;
}