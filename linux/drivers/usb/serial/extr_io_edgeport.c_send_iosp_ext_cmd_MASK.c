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
struct edgeport_port {TYPE_1__* port; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  port_number; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned char**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct edgeport_port*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct edgeport_port *edge_port,
						__u8 command, __u8 param)
{
	unsigned char   *buffer;
	unsigned char   *currentCommand;
	int             length = 0;
	int             status = 0;

	buffer = FUNC2(10, GFP_ATOMIC);
	if (!buffer)
		return -ENOMEM;

	currentCommand = buffer;

	FUNC0(&currentCommand, &length, edge_port->port->port_number,
			 command, param);

	status = FUNC3(edge_port, buffer, length);
	if (status) {
		/* something bad happened, let's free up the memory */
		FUNC1(buffer);
	}

	return status;
}