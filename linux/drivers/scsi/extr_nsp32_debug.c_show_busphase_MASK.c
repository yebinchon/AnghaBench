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
#define  BUSPHASE_COMMAND 134 
#define  BUSPHASE_DATA_IN 133 
#define  BUSPHASE_DATA_OUT 132 
#define  BUSPHASE_MESSAGE_IN 131 
#define  BUSPHASE_MESSAGE_OUT 130 
#define  BUSPHASE_SELECT 129 
#define  BUSPHASE_STATUS 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned char stat)
{
	switch(stat) {
	case BUSPHASE_COMMAND:
		FUNC0( "BUSPHASE_COMMAND\n");
		break;
	case BUSPHASE_MESSAGE_IN:
		FUNC0( "BUSPHASE_MESSAGE_IN\n");
		break;
	case BUSPHASE_MESSAGE_OUT:
		FUNC0( "BUSPHASE_MESSAGE_OUT\n");
		break;
	case BUSPHASE_DATA_IN:
		FUNC0( "BUSPHASE_DATA_IN\n");
		break;
	case BUSPHASE_DATA_OUT:
		FUNC0( "BUSPHASE_DATA_OUT\n");
		break;
	case BUSPHASE_STATUS:
		FUNC0( "BUSPHASE_STATUS\n");
		break;
	case BUSPHASE_SELECT:
		FUNC0( "BUSPHASE_SELECT\n");
		break;
	default:
		FUNC0( "BUSPHASE_other: 0x%x\n", stat);
		break;
	}
}