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
struct iss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*) ; 
 int FUNC2 (struct iss_device*) ; 
 int FUNC3 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_device*) ; 
 int FUNC5 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_device*) ; 
 int FUNC7 (struct iss_device*) ; 
 int FUNC8 (struct iss_device*) ; 

__attribute__((used)) static int FUNC9(struct iss_device *iss)
{
	int ret;

	ret = FUNC3(iss);
	if (ret < 0) {
		FUNC0(iss->dev, "CSI PHY initialization failed\n");
		goto error_csiphy;
	}

	ret = FUNC2(iss);
	if (ret < 0) {
		FUNC0(iss->dev, "CSI2 initialization failed\n");
		goto error_csi2;
	}

	ret = FUNC7(iss);
	if (ret < 0) {
		FUNC0(iss->dev, "ISP IPIPEIF initialization failed\n");
		goto error_ipipeif;
	}

	ret = FUNC5(iss);
	if (ret < 0) {
		FUNC0(iss->dev, "ISP IPIPE initialization failed\n");
		goto error_ipipe;
	}

	ret = FUNC8(iss);
	if (ret < 0) {
		FUNC0(iss->dev, "ISP RESIZER initialization failed\n");
		goto error_resizer;
	}

	return 0;

error_resizer:
	FUNC4(iss);
error_ipipe:
	FUNC6(iss);
error_ipipeif:
	FUNC1(iss);
error_csi2:
error_csiphy:
	return ret;
}