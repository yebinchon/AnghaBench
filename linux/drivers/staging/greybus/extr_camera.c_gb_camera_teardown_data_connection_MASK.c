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
struct gb_camera {int /*<<< orphan*/ * data_connection; TYPE_1__* connection; } ;
struct ap_csi_config_request {int csi_id; } ;
typedef  int /*<<< orphan*/  csi_cfg ;
struct TYPE_2__ {int /*<<< orphan*/  hd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_APB_REQUEST_CSI_TX_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct gb_camera*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ap_csi_config_request*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_camera*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ap_csi_config_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct gb_camera *gcam)
{
	struct ap_csi_config_request csi_cfg;
	int ret;

	/* Stop the APB1 CSI transmitter. */
	FUNC5(&csi_cfg, 0, sizeof(csi_cfg));
	csi_cfg.csi_id = 1;

	ret = FUNC3(gcam->connection->hd, &csi_cfg,
			   sizeof(csi_cfg),
			   GB_APB_REQUEST_CSI_TX_CONTROL, false);

	if (ret < 0)
		FUNC4(gcam, "failed to stop the CSI transmitter\n");

	/* Set the UniPro link to low speed mode. */
	FUNC0(gcam, false);

	/* Destroy the data connection. */
	FUNC2(gcam->data_connection);
	FUNC1(gcam->data_connection);
	gcam->data_connection = NULL;
}