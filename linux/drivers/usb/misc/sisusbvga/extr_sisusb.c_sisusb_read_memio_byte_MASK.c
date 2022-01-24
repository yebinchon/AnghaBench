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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct sisusb_usb_data {int dummy; } ;
struct sisusb_packet {int header; int address; int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sisusb_packet*) ; 
 int FUNC1 (struct sisusb_usb_data*,int,struct sisusb_packet*) ; 

__attribute__((used)) static int FUNC2(struct sisusb_usb_data *sisusb, int type,
		u32 addr, u8 *data)
{
	struct sisusb_packet packet;
	int ret;

	FUNC0(&packet);
	packet.header  = (1 << (addr & 3)) | (type << 6);
	packet.address = addr & ~3;
	ret = FUNC1(sisusb, 6, &packet);
	*data = (u8)(packet.data >> ((addr & 3) << 3));
	return ret;
}