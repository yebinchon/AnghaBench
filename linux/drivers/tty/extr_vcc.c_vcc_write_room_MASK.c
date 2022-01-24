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
typedef  int u64 ;
struct vcc_port {int chars_in_buffer; } ;
struct tty_struct {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int VCC_BUFF_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct vcc_port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vcc_port*,int) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct vcc_port *port;
	u64 num;

	if (FUNC1(!tty)) {
		FUNC0("VCC: write_room: Invalid TTY handle\n");
		return -ENXIO;
	}

	port = FUNC2(tty->index);
	if (FUNC1(!port)) {
		FUNC0("VCC: write_room: Failed to find VCC port\n");
		return -ENODEV;
	}

	num = VCC_BUFF_LEN - port->chars_in_buffer;

	FUNC3(port, false);

	return num;
}