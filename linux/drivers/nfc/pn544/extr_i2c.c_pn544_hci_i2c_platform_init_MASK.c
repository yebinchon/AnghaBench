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
struct pn544_i2c_phy {int en_polarity; int /*<<< orphan*/  gpiod_en; TYPE_1__* i2c_dev; int /*<<< orphan*/  gpiod_fw; } ;
typedef  int /*<<< orphan*/  rset_cmd ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct pn544_i2c_phy *phy)
{
	int polarity, retry, ret;
	char rset_cmd[] = { 0x05, 0xF9, 0x04, 0x00, 0xC3, 0xE5 };
	int count = sizeof(rset_cmd);

	FUNC4(&phy->i2c_dev->dev, "Detecting nfc_en polarity\n");

	/* Disable fw download */
	FUNC1(phy->gpiod_fw, 0);

	for (polarity = 0; polarity < 2; polarity++) {
		phy->en_polarity = polarity;
		retry = 3;
		while (retry--) {
			/* power off */
			FUNC1(phy->gpiod_en, !phy->en_polarity);
			FUNC5(10000, 15000);

			/* power on */
			FUNC1(phy->gpiod_en, phy->en_polarity);
			FUNC5(10000, 15000);

			/* send reset */
			FUNC0(&phy->i2c_dev->dev, "Sending reset cmd\n");
			ret = FUNC2(phy->i2c_dev, rset_cmd, count);
			if (ret == count) {
				FUNC4(&phy->i2c_dev->dev,
					 "nfc_en polarity : active %s\n",
					 (polarity == 0 ? "low" : "high"));
				goto out;
			}
		}
	}

	FUNC3(&phy->i2c_dev->dev,
		"Could not detect nfc_en polarity, fallback to active high\n");

out:
	FUNC1(phy->gpiod_en, !phy->en_polarity);
}