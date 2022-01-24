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

/* Variables and functions */
#define  PIPE_BULK 131 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned char FUNC1 (unsigned int) ; 
 unsigned char FUNC2 (unsigned int) ; 
 unsigned char FUNC3 (unsigned int) ; 
 unsigned char FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int p)
{
	unsigned char type = FUNC4(p);
	unsigned char ep   = FUNC2(p);
	unsigned char dev  = FUNC1(p);
	unsigned char dir  = FUNC3(p);

	FUNC0("dev(%d) ep(%d) [%s] ", dev, ep, dir ? "IN" : "OUT");

	switch (type) {
	case PIPE_ISOCHRONOUS:
		FUNC0("ISO\n");
		break;
	case PIPE_INTERRUPT:
		FUNC0("INT\n");
		break;
	case PIPE_CONTROL:
		FUNC0("CTRL\n");
		break;
	case PIPE_BULK:
		FUNC0("BULK\n");
		break;
	default:
		FUNC0("ERR\n");
		break;
	}
}