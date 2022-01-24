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
struct nci_dev {int dummy; } ;
struct fdp_nci_info {int /*<<< orphan*/  ndev; } ;
struct core_conn_create_dest_spec_params {int length; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  FDP_PATCH_CONN_DEST ; 
 int /*<<< orphan*/  FDP_PATCH_CONN_PARAM_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct core_conn_create_dest_spec_params*) ; 
 int FUNC1 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fdp_nci_info* FUNC2 (struct nci_dev*) ; 

__attribute__((used)) static int FUNC3(struct nci_dev *ndev)
{
	struct fdp_nci_info *info = FUNC2(ndev);
	struct core_conn_create_dest_spec_params param;
	int r;

	/* proprietary destination specific paramerer without value */
	param.type = FDP_PATCH_CONN_PARAM_TYPE;
	param.length = 0x00;

	r = FUNC0(info->ndev, FDP_PATCH_CONN_DEST, 1,
				 sizeof(param), &param);
	if (r)
		return r;

	return FUNC1(ndev,
						     FDP_PATCH_CONN_DEST, NULL);
}