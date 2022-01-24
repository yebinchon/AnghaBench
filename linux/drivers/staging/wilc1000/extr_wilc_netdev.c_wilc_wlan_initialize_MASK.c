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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int initialized; scalar_t__ dev_irq_num; TYPE_1__* hif_func; scalar_t__ gpio_irq; scalar_t__ close; int /*<<< orphan*/  mac_status; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  firmware_ver ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_interrupt ) (struct wilc*) ;scalar_t__ (* enable_interrupt ) (struct wilc*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WID_FIRMWARE_VERSION ; 
 int /*<<< orphan*/  WILC_MAC_STATUS_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 scalar_t__ FUNC4 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc*) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,struct wilc_vif*) ; 
 int FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct wilc_vif*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wilc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct wilc*,struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int FUNC16 (struct net_device*) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev, struct wilc_vif *vif)
{
	int ret = 0;
	struct wilc *wl = vif->wilc;

	if (!wl->initialized) {
		wl->mac_status = WILC_MAC_STATUS_INIT;
		wl->close = 0;

		ret = FUNC13(dev);
		if (ret < 0)
			return -EIO;

		ret = FUNC16(dev);
		if (ret < 0) {
			ret = -EIO;
			goto fail_wilc_wlan;
		}

		if (wl->gpio_irq && FUNC1(dev)) {
			ret = -EIO;
			goto fail_threads;
		}

		if (!wl->dev_irq_num &&
		    wl->hif_func->enable_interrupt &&
		    wl->hif_func->enable_interrupt(wl)) {
			ret = -EIO;
			goto fail_irq_init;
		}

		if (FUNC12(dev)) {
			ret = -EIO;
			goto fail_irq_enable;
		}

		ret = FUNC6(dev);
		if (ret < 0) {
			ret = -EIO;
			goto fail_irq_enable;
		}

		ret = FUNC8(dev);
		if (ret < 0) {
			ret = -EIO;
			goto fail_irq_enable;
		}

		if (FUNC9(vif, 1, WID_FIRMWARE_VERSION, 1, 0)) {
			int size;
			char firmware_ver[20];

			size = FUNC10(wl, WID_FIRMWARE_VERSION,
						     firmware_ver,
						     sizeof(firmware_ver));
			firmware_ver[size] = '\0';
			FUNC2(dev, "Firmware Ver = %s\n", firmware_ver);
		}
		ret = FUNC7(dev, vif);

		if (ret < 0) {
			FUNC3(dev, "Failed to configure firmware\n");
			ret = -EIO;
			goto fail_fw_start;
		}
		wl->initialized = true;
		return 0;

fail_fw_start:
		FUNC14(wl, vif);

fail_irq_enable:
		if (!wl->dev_irq_num &&
		    wl->hif_func->disable_interrupt)
			wl->hif_func->disable_interrupt(wl);
fail_irq_init:
		if (wl->dev_irq_num)
			FUNC0(dev);
fail_threads:
		FUNC15(dev);
fail_wilc_wlan:
		FUNC11(dev);
		FUNC3(dev, "WLAN initialization FAILED\n");
	} else {
		FUNC2(dev, "wilc1000 already initialized\n");
	}
	return ret;
}