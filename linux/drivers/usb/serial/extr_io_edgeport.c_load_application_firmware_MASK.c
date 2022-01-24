#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ihex_binrec {int* data; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_5__ {int iDownloadFile; int FirmwareMajorVersion; int FirmwareMinorVersion; int /*<<< orphan*/  FirmwareBuildNumber; } ;
struct edgeport_serial {TYPE_4__* serial; TYPE_1__ product_info; } ;
struct device {int dummy; } ;
typedef  int __u32 ;
typedef  int __u16 ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
#define  EDGE_DOWNLOAD_FILE_80251 130 
#define  EDGE_DOWNLOAD_FILE_I930 129 
#define  EDGE_DOWNLOAD_FILE_NONE 128 
 int /*<<< orphan*/  USB_REQUEST_ION_EXEC_DL_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct ihex_binrec* FUNC5 (struct ihex_binrec const*) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char const*,struct device*) ; 
 int FUNC8 (TYPE_4__*,int,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct edgeport_serial *edge_serial)
{
	struct device *dev = &edge_serial->serial->dev->dev;
	const struct ihex_binrec *rec;
	const struct firmware *fw;
	const char *fw_name;
	const char *fw_info;
	int response;
	__u32 Operaddr;
	__u16 build;

	switch (edge_serial->product_info.iDownloadFile) {
		case EDGE_DOWNLOAD_FILE_I930:
			fw_info = "downloading firmware version (930)";
			fw_name	= "edgeport/down.fw";
			break;

		case EDGE_DOWNLOAD_FILE_80251:
			fw_info = "downloading firmware version (80251)";
			fw_name	= "edgeport/down2.fw";
			break;

		case EDGE_DOWNLOAD_FILE_NONE:
			FUNC3(dev, "No download file specified, skipping download\n");
			return;

		default:
			return;
	}

	response = FUNC7(&fw, fw_name,
				    &edge_serial->serial->dev->dev);
	if (response) {
		FUNC4(dev, "Failed to load image \"%s\" err %d\n",
		       fw_name, response);
		return;
	}

	rec = (const struct ihex_binrec *)fw->data;
	build = (rec->data[2] << 8) | rec->data[3];

	FUNC3(dev, "%s %d.%d.%d\n", fw_info, rec->data[0], rec->data[1], build);

	edge_serial->product_info.FirmwareMajorVersion = rec->data[0];
	edge_serial->product_info.FirmwareMinorVersion = rec->data[1];
	edge_serial->product_info.FirmwareBuildNumber = FUNC2(build);

	for (rec = FUNC5(rec); rec;
	     rec = FUNC5(rec)) {
		Operaddr = FUNC1(rec->addr);
		response = FUNC8(edge_serial->serial,
				     Operaddr >> 16,
				     Operaddr & 0xFFFF,
				     FUNC0(rec->len),
				     &rec->data[0]);
		if (response < 0) {
			FUNC4(&edge_serial->serial->dev->dev,
				"sram_write failed (%x, %x, %d)\n",
				Operaddr >> 16, Operaddr & 0xFFFF,
				FUNC0(rec->len));
			break;
		}
	}

	FUNC3(dev, "sending exec_dl_code\n");
	response = FUNC9 (edge_serial->serial->dev,
				    FUNC10(edge_serial->serial->dev, 0),
				    USB_REQUEST_ION_EXEC_DL_CODE,
				    0x40, 0x4000, 0x0001, NULL, 0, 3000);

	FUNC6(fw);
}