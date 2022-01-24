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
struct q6v5 {int /*<<< orphan*/  rproc; int /*<<< orphan*/  proxy_pd_count; int /*<<< orphan*/  proxy_pds; int /*<<< orphan*/  active_pd_count; int /*<<< orphan*/  active_pds; int /*<<< orphan*/  ssr_subdev; int /*<<< orphan*/  smd_subdev; int /*<<< orphan*/  glink_subdev; int /*<<< orphan*/  sysmon; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct q6v5* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct q6v5*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct q6v5 *qproc = FUNC0(pdev);

	FUNC6(qproc->rproc);

	FUNC5(qproc->sysmon);
	FUNC2(qproc->rproc, &qproc->glink_subdev);
	FUNC3(qproc->rproc, &qproc->smd_subdev);
	FUNC4(qproc->rproc, &qproc->ssr_subdev);

	FUNC1(qproc, qproc->active_pds, qproc->active_pd_count);
	FUNC1(qproc, qproc->proxy_pds, qproc->proxy_pd_count);

	FUNC7(qproc->rproc);

	return 0;
}