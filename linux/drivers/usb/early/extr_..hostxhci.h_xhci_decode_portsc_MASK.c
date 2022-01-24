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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PORT_CAS ; 
 int PORT_CEC ; 
 int PORT_CONNECT ; 
 int PORT_CSC ; 
 int PORT_OC ; 
 int PORT_OCC ; 
 int PORT_PE ; 
 int PORT_PEC ; 
 int PORT_PLC ; 
 int PORT_POWER ; 
 int PORT_RC ; 
 int PORT_RESET ; 
 int PORT_WKCONN_E ; 
 int PORT_WKDISC_E ; 
 int PORT_WKOC_E ; 
 int PORT_WRC ; 
 int FUNC1 (char*,char*,...) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static inline const char *FUNC3(u32 portsc)
{
	static char str[256];
	int ret;

	ret = FUNC1(str, "%s %s %s Link:%s PortSpeed:%d ",
		      portsc & PORT_POWER	? "Powered" : "Powered-off",
		      portsc & PORT_CONNECT	? "Connected" : "Not-connected",
		      portsc & PORT_PE		? "Enabled" : "Disabled",
		      FUNC2(portsc),
		      FUNC0(portsc));

	if (portsc & PORT_OC)
		ret += FUNC1(str + ret, "OverCurrent ");
	if (portsc & PORT_RESET)
		ret += FUNC1(str + ret, "In-Reset ");

	ret += FUNC1(str + ret, "Change: ");
	if (portsc & PORT_CSC)
		ret += FUNC1(str + ret, "CSC ");
	if (portsc & PORT_PEC)
		ret += FUNC1(str + ret, "PEC ");
	if (portsc & PORT_WRC)
		ret += FUNC1(str + ret, "WRC ");
	if (portsc & PORT_OCC)
		ret += FUNC1(str + ret, "OCC ");
	if (portsc & PORT_RC)
		ret += FUNC1(str + ret, "PRC ");
	if (portsc & PORT_PLC)
		ret += FUNC1(str + ret, "PLC ");
	if (portsc & PORT_CEC)
		ret += FUNC1(str + ret, "CEC ");
	if (portsc & PORT_CAS)
		ret += FUNC1(str + ret, "CAS ");

	ret += FUNC1(str + ret, "Wake: ");
	if (portsc & PORT_WKCONN_E)
		ret += FUNC1(str + ret, "WCE ");
	if (portsc & PORT_WKDISC_E)
		ret += FUNC1(str + ret, "WDE ");
	if (portsc & PORT_WKOC_E)
		ret += FUNC1(str + ret, "WOE ");

	return str;
}