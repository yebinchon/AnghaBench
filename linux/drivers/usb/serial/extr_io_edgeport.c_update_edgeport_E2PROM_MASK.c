#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ihex_binrec {int* data; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_6__ {int MajorVersion; int MinorVersion; int /*<<< orphan*/  BuildNumber; } ;
struct TYPE_5__ {int iDownloadFile; } ;
struct edgeport_serial {TYPE_4__* serial; TYPE_2__ boot_descriptor; TYPE_1__ product_info; } ;
struct device {int dummy; } ;
typedef  int __u8 ;
typedef  int __u32 ;
typedef  int __u16 ;
struct TYPE_8__ {TYPE_3__* dev; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
#define  EDGE_DOWNLOAD_FILE_80251 129 
#define  EDGE_DOWNLOAD_FILE_I930 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct ihex_binrec* FUNC4 (struct ihex_binrec const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char const*,struct device*) ; 
 int FUNC8 (TYPE_4__*,int,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC9(struct edgeport_serial *edge_serial)
{
	struct device *dev = &edge_serial->serial->dev->dev;
	__u32 BootCurVer;
	__u32 BootNewVer;
	__u8 BootMajorVersion;
	__u8 BootMinorVersion;
	__u16 BootBuildNumber;
	__u32 Bootaddr;
	const struct ihex_binrec *rec;
	const struct firmware *fw;
	const char *fw_name;
	int response;

	switch (edge_serial->product_info.iDownloadFile) {
	case EDGE_DOWNLOAD_FILE_I930:
		fw_name	= "edgeport/boot.fw";
		break;
	case EDGE_DOWNLOAD_FILE_80251:
		fw_name	= "edgeport/boot2.fw";
		break;
	default:
		return;
	}

	response = FUNC7(&fw, fw_name,
					 &edge_serial->serial->dev->dev);
	if (response) {
		FUNC3(dev, "Failed to load image \"%s\" err %d\n",
		       fw_name, response);
		return;
	}

	rec = (const struct ihex_binrec *)fw->data;
	BootMajorVersion = rec->data[0];
	BootMinorVersion = rec->data[1];
	BootBuildNumber = (rec->data[2] << 8) | rec->data[3];

	/* Check Boot Image Version */
	BootCurVer = (edge_serial->boot_descriptor.MajorVersion << 24) +
		     (edge_serial->boot_descriptor.MinorVersion << 16) +
		      FUNC5(edge_serial->boot_descriptor.BuildNumber);

	BootNewVer = (BootMajorVersion << 24) +
		     (BootMinorVersion << 16) +
		      BootBuildNumber;

	FUNC2(dev, "Current Boot Image version %d.%d.%d\n",
	    edge_serial->boot_descriptor.MajorVersion,
	    edge_serial->boot_descriptor.MinorVersion,
	    FUNC5(edge_serial->boot_descriptor.BuildNumber));


	if (BootNewVer > BootCurVer) {
		FUNC2(dev, "**Update Boot Image from %d.%d.%d to %d.%d.%d\n",
		    edge_serial->boot_descriptor.MajorVersion,
		    edge_serial->boot_descriptor.MinorVersion,
		    FUNC5(edge_serial->boot_descriptor.BuildNumber),
		    BootMajorVersion, BootMinorVersion, BootBuildNumber);

		FUNC2(dev, "Downloading new Boot Image\n");

		for (rec = FUNC4(rec); rec;
		     rec = FUNC4(rec)) {
			Bootaddr = FUNC1(rec->addr);
			response = FUNC8(edge_serial->serial,
					     Bootaddr >> 16,
					     Bootaddr & 0xFFFF,
					     FUNC0(rec->len),
					     &rec->data[0]);
			if (response < 0) {
				FUNC3(&edge_serial->serial->dev->dev,
					"rom_write failed (%x, %x, %d)\n",
					Bootaddr >> 16, Bootaddr & 0xFFFF,
					FUNC0(rec->len));
				break;
			}
		}
	} else {
		FUNC2(dev, "Boot Image -- already up to date\n");
	}
	FUNC6(fw);
}