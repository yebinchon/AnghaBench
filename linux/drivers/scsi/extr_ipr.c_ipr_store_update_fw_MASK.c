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
typedef  char u8 ;
struct ipr_ucode_image_header {int /*<<< orphan*/  header_length; } ;
struct ipr_sglist {int dummy; } ;
struct ipr_ioa_cfg {TYPE_1__* pdev; } ;
struct firmware {int size; scalar_t__ data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  fname ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct ipr_sglist* FUNC4 (int) ; 
 int FUNC5 (struct ipr_sglist*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ipr_sglist*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct ipr_ioa_cfg*,struct ipr_sglist*) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 scalar_t__ FUNC10 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC2(dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
	struct ipr_ucode_image_header *image_hdr;
	const struct firmware *fw_entry;
	struct ipr_sglist *sglist;
	char fname[100];
	char *src;
	char *endline;
	int result, dnld_size;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EACCES;

	FUNC11(fname, sizeof(fname), "%s", buf);

	endline = FUNC12(fname, '\n');
	if (endline)
		*endline = '\0';

	if (FUNC10(&fw_entry, fname, &ioa_cfg->pdev->dev)) {
		FUNC3(&ioa_cfg->pdev->dev, "Firmware file %s not found\n", fname);
		return -EIO;
	}

	image_hdr = (struct ipr_ucode_image_header *)fw_entry->data;

	src = (u8 *)image_hdr + FUNC0(image_hdr->header_length);
	dnld_size = fw_entry->size - FUNC0(image_hdr->header_length);
	sglist = FUNC4(dnld_size);

	if (!sglist) {
		FUNC3(&ioa_cfg->pdev->dev, "Microcode buffer allocation failed\n");
		FUNC9(fw_entry);
		return -ENOMEM;
	}

	result = FUNC5(sglist, src, dnld_size);

	if (result) {
		FUNC3(&ioa_cfg->pdev->dev,
			"Microcode buffer copy to DMA buffer failed\n");
		goto out;
	}

	FUNC7("Updating microcode, please be patient.  This may take up to 30 minutes.\n");

	result = FUNC8(ioa_cfg, sglist);

	if (!result)
		result = count;
out:
	FUNC6(sglist);
	FUNC9(fw_entry);
	return result;
}