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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u32 ;
struct version_format {int /*<<< orphan*/  ver; int /*<<< orphan*/  patch; int /*<<< orphan*/  build; } ;
struct ucsi_ccg {struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ver; int /*<<< orphan*/  patch; int /*<<< orphan*/  build; } ;
struct fw_config_table {float identity; TYPE_1__ app; } ;
struct firmware {int size; int data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  fw_cfg ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FW_CFG_TABLE_SIG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ucsi_ccg*,struct version_format*,struct fw_config_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 scalar_t__ FUNC8 (struct firmware const**,char const*,struct device*) ; 

__attribute__((used)) static bool FUNC9(struct ucsi_ccg *uc, const char *fw_name,
				 struct version_format *app)
{
	const struct firmware *fw = NULL;
	struct device *dev = uc->dev;
	struct fw_config_table fw_cfg;
	u32 cur_version, new_version;
	bool is_later = false;

	if (FUNC8(&fw, fw_name, dev) != 0) {
		FUNC3(dev, "error: Failed to open cyacd file %s\n", fw_name);
		return false;
	}

	/*
	 * check if signed fw
	 * last part of fw image is fw cfg table and signature
	 */
	if (fw->size < sizeof(fw_cfg) + FW_CFG_TABLE_SIG_SIZE)
		goto out_release_firmware;

	FUNC6((uint8_t *)&fw_cfg, fw->data + fw->size -
	       sizeof(fw_cfg) - FW_CFG_TABLE_SIG_SIZE, sizeof(fw_cfg));

	if (fw_cfg.identity != ('F' | 'W' << 8 | 'C' << 16 | 'T' << 24)) {
		FUNC4(dev, "not a signed image\n");
		goto out_release_firmware;
	}

	/* compare input version with FWCT version */
	cur_version = FUNC5(app->build) | FUNC1(app->patch) |
			FUNC0(app->ver);

	new_version = FUNC5(fw_cfg.app.build) |
			FUNC1(fw_cfg.app.patch) |
			FUNC0(fw_cfg.app.ver);

	if (!FUNC2(uc, app, &fw_cfg))
		goto out_release_firmware;

	if (new_version > cur_version)
		is_later = true;

out_release_firmware:
	FUNC7(fw);
	return is_later;
}