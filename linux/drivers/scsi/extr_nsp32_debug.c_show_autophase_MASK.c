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
 unsigned short AUTOSCSI_BUSY ; 
 unsigned short BUS_FREE_OCCUER ; 
 unsigned short COMMAND_PHASE ; 
 unsigned short DATA_IN_PHASE ; 
 unsigned short DATA_OUT_PHASE ; 
 unsigned short ILLEGAL_PHASE ; 
 unsigned short MSGIN_00_VALID ; 
 unsigned short MSGIN_02_VALID ; 
 unsigned short MSGIN_03_VALID ; 
 unsigned short MSGIN_04_VALID ; 
 unsigned short MSGOUT_PHASE ; 
 unsigned short MSG_IN_OCCUER ; 
 unsigned short MSG_OUT_OCCUER ; 
 unsigned short SELECTION_TIMEOUT ; 
 unsigned short STATUS_PHASE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned short i)
{
	FUNC0("auto: 0x%x,", i);

	if(i & COMMAND_PHASE) {
		FUNC0(" cmd");
	}
	if(i & DATA_IN_PHASE) {
		FUNC0(" din");
	}
	if(i & DATA_OUT_PHASE) {
		FUNC0(" dout");
	}
	if(i & MSGOUT_PHASE) {
		FUNC0(" mout");
	}
	if(i & STATUS_PHASE) {
		FUNC0(" stat");
	}
	if(i & ILLEGAL_PHASE) {
		FUNC0(" ill");
	}
	if(i & BUS_FREE_OCCUER) {
		FUNC0(" bfree-o");
	}
	if(i & MSG_IN_OCCUER) {
		FUNC0(" min-o");
	}
	if(i & MSG_OUT_OCCUER) {
		FUNC0(" mout-o");
	}
	if(i & SELECTION_TIMEOUT) {
		FUNC0(" sel");
	}
	if(i & MSGIN_00_VALID) {
		FUNC0(" m0");
	}
	if(i & MSGIN_02_VALID) {
		FUNC0(" m2");
	}
	if(i & MSGIN_03_VALID) {
		FUNC0(" m3");
	}
	if(i & MSGIN_04_VALID) {
		FUNC0(" m4");
	}
	if(i & AUTOSCSI_BUSY) {
		FUNC0(" busy");
	}

	FUNC0("\n");
}