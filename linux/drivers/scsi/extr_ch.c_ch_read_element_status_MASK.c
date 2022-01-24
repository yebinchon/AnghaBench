#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_7__ {scalar_t__ voltags; TYPE_1__* device; } ;
typedef  TYPE_2__ scsi_changer ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int READ_ELEMENT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(scsi_changer *ch, u_int elem, char *data)
{
	u_char  cmd[12];
	u_char  *buffer;
	int     result;

	buffer = FUNC5(512, GFP_KERNEL | GFP_DMA);
	if(!buffer)
		return -ENOMEM;

 retry:
	FUNC7(cmd,0,sizeof(cmd));
	cmd[0] = READ_ELEMENT_STATUS;
	cmd[1] = ((ch->device->lun & 0x7) << 5) |
		(ch->voltags ? 0x10 : 0) |
		FUNC3(ch,elem);
	cmd[2] = (elem >> 8) & 0xff;
	cmd[3] = elem        & 0xff;
	cmd[5] = 1;
	cmd[9] = 255;
	if (0 == (result = FUNC2(ch, cmd, 12,
				      buffer, 256, DMA_FROM_DEVICE))) {
		if (((buffer[16] << 8) | buffer[17]) != elem) {
			FUNC0("asked for element 0x%02x, got 0x%02x\n",
				elem,(buffer[16] << 8) | buffer[17]);
			FUNC4(buffer);
			return -EIO;
		}
		FUNC6(data,buffer+16,16);
	} else {
		if (ch->voltags) {
			ch->voltags = 0;
			FUNC1(KERN_INFO, "device has no volume tag support\n");
			goto retry;
		}
		FUNC0("READ ELEMENT STATUS for element 0x%x failed\n",elem);
	}
	FUNC4(buffer);
	return result;
}