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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int mode; } ;
struct ucsi_ccg {TYPE_1__ info; struct device* dev; } ;
struct fw_config_table {float identity; } ;
struct firmware {char* data; int size; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  fw_cfg_sig ;
typedef  int /*<<< orphan*/  fw_cfg ;
typedef  enum enum_flash_mode { ____Placeholder_enum_flash_mode } enum_flash_mode ;

/* Variables and functions */
 int CCG4_ROW_SIZE ; 
 int CCG_DEVINFO_FWMODE_MASK ; 
 int CCG_DEVINFO_FWMODE_SHIFT ; 
 int CYACD_LINE_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLASH_FWCT1_WR_CMD ; 
 int /*<<< orphan*/  FLASH_FWCT2_WR_CMD ; 
 int /*<<< orphan*/  FLASH_FWCT_SIG_WR_CMD ; 
 int /*<<< orphan*/  FLASH_WR_CMD ; 
 int FW1 ; 
 int FW2 ; 
 int FW_CFG_TABLE_SIG_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PRIMARY ; 
 int FUNC0 (struct ucsi_ccg*) ; 
 int FUNC1 (struct ucsi_ccg*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ucsi_ccg*,int) ; 
 int FUNC3 (struct ucsi_ccg*) ; 
 int FUNC4 (struct ucsi_ccg*,int) ; 
 int FUNC5 (struct ucsi_ccg*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char** ccg_fw_names ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct firmware const*) ; 
 int FUNC15 (struct firmware const**,char*,struct device*) ; 
 char* FUNC16 (char const*,int,char) ; 

__attribute__((used)) static int FUNC17(struct ucsi_ccg *uc, enum enum_flash_mode mode)
{
	struct device *dev = uc->dev;
	const struct firmware *fw = NULL;
	const char *p, *s;
	const char *eof;
	int err, row, len, line_sz, line_cnt = 0;
	unsigned long start_time = jiffies;
	struct fw_config_table  fw_cfg;
	u8 fw_cfg_sig[FW_CFG_TABLE_SIG_SIZE];
	u8 *wr_buf;

	err = FUNC15(&fw, ccg_fw_names[mode], dev);
	if (err) {
		FUNC6(dev, "request %s failed err=%d\n",
			ccg_fw_names[mode], err);
		return err;
	}

	if (((uc->info.mode & CCG_DEVINFO_FWMODE_MASK) >>
			CCG_DEVINFO_FWMODE_SHIFT) == FW2) {
		err = FUNC2(uc, false);
		if (err < 0)
			goto release_fw;
		err = FUNC1(uc, 0);
		if (err < 0)
			goto release_fw;
	}

	eof = fw->data + fw->size;

	/*
	 * check if signed fw
	 * last part of fw image is fw cfg table and signature
	 */
	if (fw->size < sizeof(fw_cfg) + sizeof(fw_cfg_sig))
		goto not_signed_fw;

	FUNC13((uint8_t *)&fw_cfg, fw->data + fw->size -
	       sizeof(fw_cfg) - sizeof(fw_cfg_sig), sizeof(fw_cfg));

	if (fw_cfg.identity != ('F' | ('W' << 8) | ('C' << 16) | ('T' << 24))) {
		FUNC7(dev, "not a signed image\n");
		goto not_signed_fw;
	}
	eof = fw->data + fw->size - sizeof(fw_cfg) - sizeof(fw_cfg_sig);

	FUNC13((uint8_t *)&fw_cfg_sig,
	       fw->data + fw->size - sizeof(fw_cfg_sig), sizeof(fw_cfg_sig));

	/* flash fw config table and signature first */
	err = FUNC5(uc, 0, (u8 *)&fw_cfg,
				      FLASH_FWCT1_WR_CMD);
	if (err)
		goto release_fw;

	err = FUNC5(uc, 0, (u8 *)&fw_cfg + CCG4_ROW_SIZE,
				      FLASH_FWCT2_WR_CMD);
	if (err)
		goto release_fw;

	err = FUNC5(uc, 0, &fw_cfg_sig,
				      FLASH_FWCT_SIG_WR_CMD);
	if (err)
		goto release_fw;

not_signed_fw:
	wr_buf = FUNC12(CCG4_ROW_SIZE + 4, GFP_KERNEL);
	if (!wr_buf) {
		err = -ENOMEM;
		goto release_fw;
	}

	err = FUNC0(uc);
	if (err)
		goto release_mem;

	/*****************************************************************
	 * CCG firmware image (.cyacd) file line format
	 *
	 * :00rrrrllll[dd....]cc/r/n
	 *
	 * :00   header
	 * rrrr is row number to flash				(4 char)
	 * llll is data len to flash				(4 char)
	 * dd   is a data field represents one byte of data	(512 char)
	 * cc   is checksum					(2 char)
	 * \r\n newline
	 *
	 * Total length: 3 + 4 + 4 + 512 + 2 + 2 = 527
	 *
	 *****************************************************************/

	p = FUNC16(fw->data, fw->size, ':');
	while (p < eof) {
		s = FUNC16(p + 1, eof - p - 1, ':');

		if (!s)
			s = eof;

		line_sz = s - p;

		if (line_sz != CYACD_LINE_SIZE) {
			FUNC6(dev, "Bad FW format line_sz=%d\n", line_sz);
			err =  -EINVAL;
			goto release_mem;
		}

		if (FUNC9(wr_buf, p + 3, CCG4_ROW_SIZE + 4)) {
			err =  -EINVAL;
			goto release_mem;
		}

		row = FUNC8(wr_buf);
		len = FUNC8(&wr_buf[2]);

		if (len != CCG4_ROW_SIZE) {
			err =  -EINVAL;
			goto release_mem;
		}

		err = FUNC5(uc, row, wr_buf + 4,
					      FLASH_WR_CMD);
		if (err)
			goto release_mem;

		line_cnt++;
		p = s;
	}

	FUNC7(dev, "total %d row flashed. time: %dms\n",
		 line_cnt, FUNC10(jiffies - start_time));

	err = FUNC4(uc, (mode == PRIMARY) ? FW2 :  FW1);
	if (err)
		FUNC6(dev, "%s validation failed err=%d\n",
			(mode == PRIMARY) ? "FW2" :  "FW1", err);
	else
		FUNC7(dev, "%s validated\n",
			 (mode == PRIMARY) ? "FW2" :  "FW1");

	err = FUNC2(uc, false);
	if (err < 0)
		goto release_mem;

	err = FUNC3(uc);
	if (err < 0)
		goto release_mem;

	err = FUNC2(uc, true);
	if (err < 0)
		goto release_mem;

release_mem:
	FUNC11(wr_buf);

release_fw:
	FUNC14(fw);
	return err;
}