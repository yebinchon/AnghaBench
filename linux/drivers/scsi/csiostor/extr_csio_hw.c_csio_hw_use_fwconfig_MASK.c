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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct fw_caps_config_cmd {void* cfvalid_to_len16; void* op_to_write; int /*<<< orphan*/  cfcsum; int /*<<< orphan*/  finicsum; int /*<<< orphan*/  finiver; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int /*<<< orphan*/  flags; int /*<<< orphan*/  mb_mempool; int /*<<< orphan*/  sm; TYPE_1__* chip_ops; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {unsigned int (* chip_flash_cfg_addr ) (struct csio_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HWE_INIT ; 
 int /*<<< orphan*/  CSIO_HWF_USING_SOFT_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_mb*,struct fw_caps_config_cmd*,int /*<<< orphan*/ ,struct csio_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_CAPS_CONFIG_CMD ; 
 int FW_CAPS_CONFIG_CMD_CFVALID_F ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC5 (struct fw_caps_config_cmd) ; 
 unsigned int FW_MEMTYPE_CF_FLASH ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,char*,int) ; 
 int FUNC9 (struct csio_hw*,int) ; 
 int FUNC10 (struct csio_hw*) ; 
 int FUNC11 (struct csio_hw*,int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_hw*,char*,char*,scalar_t__,scalar_t__) ; 
 int FUNC14 (struct csio_mb*) ; 
 scalar_t__ FUNC15 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct csio_hw*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC18 (struct csio_hw*) ; 
 void* FUNC19 (int) ; 
 struct csio_mb* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC25 (struct csio_hw*) ; 

__attribute__((used)) static int
FUNC26(struct csio_hw *hw, int reset, u32 *fw_cfg_param)
{
	struct csio_mb	*mbp = NULL;
	struct fw_caps_config_cmd *caps_cmd;
	unsigned int mtype, maddr;
	int rv = -EINVAL;
	uint32_t finiver = 0, finicsum = 0, cfcsum = 0;
	char path[64];
	char *config_name = NULL;

	/*
	 * Reset device if necessary
	 */
	if (reset) {
		rv = FUNC9(hw, true);
		if (rv != 0)
			goto bye;
	}

	/*
	 * If we have a configuration file in host ,
	 * then use that.  Otherwise, use the configuration file stored
	 * in the HW flash ...
	 */
	FUNC24(&hw->lock);
	rv = FUNC11(hw, fw_cfg_param, path);
	FUNC23(&hw->lock);
	if (rv != 0) {
		/*
		 * config file was not found. Use default
		 * config file from flash.
		 */
		config_name = "On FLASH";
		mtype = FW_MEMTYPE_CF_FLASH;
		maddr = hw->chip_ops->chip_flash_cfg_addr(hw);
	} else {
		config_name = path;
		mtype = FUNC6(*fw_cfg_param);
		maddr = FUNC7(*fw_cfg_param) << 16;
	}

	mbp = FUNC20(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}
	/*
	 * Tell the firmware to process the indicated Configuration File.
	 * If there are no errors and the caller has provided return value
	 * pointers for the [fini] section version, checksum and computed
	 * checksum, pass those back to the caller.
	 */
	caps_cmd = (struct fw_caps_config_cmd *)(mbp->mb);
	FUNC1(mbp, caps_cmd, CSIO_MB_DEFAULT_TMO, hw, NULL, 1);
	caps_cmd->op_to_write =
		FUNC19(FUNC4(FW_CAPS_CONFIG_CMD) |
		      FW_CMD_REQUEST_F |
		      FW_CMD_READ_F);
	caps_cmd->cfvalid_to_len16 =
		FUNC19(FW_CAPS_CONFIG_CMD_CFVALID_F |
		      FUNC3(mtype) |
		      FUNC2(maddr >> 16) |
		      FUNC5(*caps_cmd));

	if (FUNC15(hw, mbp)) {
		rv = -EINVAL;
		goto bye;
	}

	rv = FUNC14(mbp);
	 /* If the CAPS_CONFIG failed with an ENOENT (for a Firmware
	  * Configuration File in FLASH), our last gasp effort is to use the
	  * Firmware Configuration File which is embedded in the
	  * firmware.  A very few early versions of the firmware didn't
	  * have one embedded but we can ignore those.
	  */
	if (rv == ENOENT) {
		FUNC1(mbp, caps_cmd, CSIO_MB_DEFAULT_TMO, hw, NULL, 1);
		caps_cmd->op_to_write = FUNC19(FUNC4(FW_CAPS_CONFIG_CMD) |
					      FW_CMD_REQUEST_F |
					      FW_CMD_READ_F);
		caps_cmd->cfvalid_to_len16 = FUNC19(FUNC5(*caps_cmd));

		if (FUNC15(hw, mbp)) {
			rv = -EINVAL;
			goto bye;
		}

		rv = FUNC14(mbp);
		config_name = "Firmware Default";
	}
	if (rv != FW_SUCCESS)
		goto bye;

	finiver = FUNC22(caps_cmd->finiver);
	finicsum = FUNC22(caps_cmd->finicsum);
	cfcsum = FUNC22(caps_cmd->cfcsum);

	/*
	 * And now tell the firmware to use the configuration we just loaded.
	 */
	caps_cmd->op_to_write =
		FUNC19(FUNC4(FW_CAPS_CONFIG_CMD) |
		      FW_CMD_REQUEST_F |
		      FW_CMD_WRITE_F);
	caps_cmd->cfvalid_to_len16 = FUNC19(FUNC5(*caps_cmd));

	if (FUNC15(hw, mbp)) {
		rv = -EINVAL;
		goto bye;
	}

	rv = FUNC14(mbp);
	if (rv != FW_SUCCESS) {
		FUNC8(hw, "FW_CAPS_CONFIG_CMD returned %d!\n", rv);
		goto bye;
	}

	if (finicsum != cfcsum) {
		FUNC17(hw,
		      "Config File checksum mismatch: csum=%#x, computed=%#x\n",
		      finicsum, cfcsum);
	}

	/* Validate device capabilities */
	rv = FUNC12(hw, mbp);
	if (rv != 0)
		goto bye;

	FUNC21(mbp, hw->mb_mempool);
	mbp = NULL;

	/*
	 * Note that we're operating with parameters
	 * not supplied by the driver, rather than from hard-wired
	 * initialization constants buried in the driver.
	 */
	hw->flags |= CSIO_HWF_USING_SOFT_PARAMS;

	/* device parameters */
	rv = FUNC10(hw);
	if (rv != 0)
		goto bye;

	/* Configure SGE */
	FUNC18(hw);

	/*
	 * And finally tell the firmware to initialize itself using the
	 * parameters from the Configuration File.
	 */
	/* Post event to notify completion of configuration */
	FUNC16(&hw->sm, CSIO_HWE_INIT);

	FUNC13(hw, "Successfully configure using Firmware "
		  "Configuration File %s, version %#x, computed checksum %#x\n",
		  config_name, finiver, cfcsum);
	return 0;

	/*
	 * Something bad happened.  Return the error ...
	 */
bye:
	if (mbp)
		FUNC21(mbp, hw->mb_mempool);
	hw->flags &= ~CSIO_HWF_USING_SOFT_PARAMS;
	FUNC17(hw, "Configuration file error %d\n", rv);
	return rv;
}