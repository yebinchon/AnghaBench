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
struct pps_source_info {int mode; int /*<<< orphan*/  name; int /*<<< orphan*/ * echo; } ;
struct TYPE_2__ {int mode; int /*<<< orphan*/  api_version; } ;
struct pps_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; struct pps_source_info info; TYPE_1__ params; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct pps_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PPS_API_VERS ; 
 int PPS_ECHOASSERT ; 
 int PPS_ECHOCLEAR ; 
 int PPS_TSFMT_NTPFP ; 
 int PPS_TSFMT_TSPEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pps_device*) ; 
 struct pps_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pps_echo_client_default ; 
 int FUNC5 (struct pps_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct pps_device *FUNC8(struct pps_source_info *info,
		int default_params)
{
	struct pps_device *pps;
	int err;

	/* Sanity checks */
	if ((info->mode & default_params) != default_params) {
		FUNC6("%s: unsupported default parameters\n",
					info->name);
		err = -EINVAL;
		goto pps_register_source_exit;
	}
	if ((info->mode & (PPS_TSFMT_TSPEC | PPS_TSFMT_NTPFP)) == 0) {
		FUNC6("%s: unspecified time format\n",
					info->name);
		err = -EINVAL;
		goto pps_register_source_exit;
	}

	/* Allocate memory for the new PPS source struct */
	pps = FUNC4(sizeof(struct pps_device), GFP_KERNEL);
	if (pps == NULL) {
		err = -ENOMEM;
		goto pps_register_source_exit;
	}

	/* These initializations must be done before calling idr_alloc()
	 * in order to avoid reces into pps_event().
	 */
	pps->params.api_version = PPS_API_VERS;
	pps->params.mode = default_params;
	pps->info = *info;

	/* check for default echo function */
	if ((pps->info.mode & (PPS_ECHOASSERT | PPS_ECHOCLEAR)) &&
			pps->info.echo == NULL)
		pps->info.echo = pps_echo_client_default;

	FUNC2(&pps->queue);
	FUNC7(&pps->lock);

	/* Create the char device */
	err = FUNC5(pps);
	if (err < 0) {
		FUNC6("%s: unable to create char device\n",
					info->name);
		goto kfree_pps;
	}

	FUNC1(pps->dev, "new PPS source %s\n", info->name);

	return pps;

kfree_pps:
	FUNC3(pps);

pps_register_source_exit:
	FUNC6("%s: unable to register source\n", info->name);

	return FUNC0(err);
}