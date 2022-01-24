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
struct wsm_rcpi_rssi_threshold {int rssiRcpiMode; int rollingAverageCount; } ;
struct wsm_configuration {int /*<<< orphan*/  dpdData_size; int /*<<< orphan*/  dpdData; int /*<<< orphan*/ * dot11StationId; } ;
struct cw1200_common {int cqm_use_rssi; TYPE_1__* sdd; int /*<<< orphan*/  sdd_path; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * mac_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int WSM_RCPI_RSSI_DONT_USE_LOWER ; 
 int WSM_RCPI_RSSI_DONT_USE_UPPER ; 
 int WSM_RCPI_RSSI_THRESHOLD_ENABLE ; 
 int WSM_RCPI_RSSI_USE_RSSI ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cw1200_common*,struct wsm_configuration*) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*,struct wsm_rcpi_rssi_threshold*) ; 

int FUNC5(struct cw1200_common *priv)
{
	int ret = 0;

	/* NOTE: There is a bug in FW: it reports signal
	 * as RSSI if RSSI subscription is enabled.
	 * It's not enough to set WSM_RCPI_RSSI_USE_RSSI.
	 *
	 * NOTE2: RSSI based reports have been switched to RCPI, since
	 * FW has a bug and RSSI reported values are not stable,
	 * what can lead to signal level oscilations in user-end applications
	 */
	struct wsm_rcpi_rssi_threshold threshold = {
		.rssiRcpiMode = WSM_RCPI_RSSI_THRESHOLD_ENABLE |
		WSM_RCPI_RSSI_DONT_USE_UPPER |
		WSM_RCPI_RSSI_DONT_USE_LOWER,
		.rollingAverageCount = 16,
	};

	struct wsm_configuration cfg = {
		.dot11StationId = &priv->mac_addr[0],
	};

	/* Remember the decission here to make sure, we will handle
	 * the RCPI/RSSI value correctly on WSM_EVENT_RCPI_RSS
	 */
	if (threshold.rssiRcpiMode & WSM_RCPI_RSSI_USE_RSSI)
		priv->cqm_use_rssi = true;

	if (!priv->sdd) {
		ret = FUNC2(&priv->sdd, priv->sdd_path, priv->pdev);
		if (ret) {
			FUNC1("Can't load sdd file %s.\n", priv->sdd_path);
			return ret;
		}
		FUNC0(priv);
	}

	cfg.dpdData = priv->sdd->data;
	cfg.dpdData_size = priv->sdd->size;
	ret = FUNC3(priv, &cfg);
	if (ret)
		return ret;

	/* Configure RSSI/SCPI reporting as RSSI. */
	FUNC4(priv, &threshold);

	return 0;
}