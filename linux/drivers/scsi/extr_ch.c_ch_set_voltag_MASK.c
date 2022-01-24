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
struct TYPE_7__ {TYPE_1__* device; } ;
typedef  TYPE_2__ scsi_changer ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int,int*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SEND_VOLUME_TAG ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (TYPE_2__*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(scsi_changer *ch, u_int elem,
	      int alternate, int clear, u_char *tag)
{
	u_char  cmd[12];
	u_char  *buffer;
	int result;

	buffer = FUNC5(512, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	FUNC0("%s %s voltag: 0x%x => \"%s\"\n",
		clear     ? "clear"     : "set",
		alternate ? "alternate" : "primary",
		elem, tag);
	FUNC7(cmd,0,sizeof(cmd));
	cmd[0]  = SEND_VOLUME_TAG;
	cmd[1] = ((ch->device->lun & 0x7) << 5) |
		FUNC3(ch,elem);
	cmd[2] = (elem >> 8) & 0xff;
	cmd[3] = elem        & 0xff;
	cmd[5] = clear
		? (alternate ? 0x0d : 0x0c)
		: (alternate ? 0x0b : 0x0a);

	cmd[9] = 255;

	FUNC6(buffer,tag,32);
	FUNC1(buffer);

	result = FUNC2(ch, cmd, 12, buffer, 256, DMA_TO_DEVICE);
	FUNC4(buffer);
	return result;
}