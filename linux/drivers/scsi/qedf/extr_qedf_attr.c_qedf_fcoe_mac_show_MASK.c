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
typedef  int u8 ;
typedef  int u32 ;
struct fc_lport {int /*<<< orphan*/  host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int*) ; 
 struct fc_lport* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct fc_lport *lport = FUNC4(FUNC0(dev));
	u32 port_id;
	u8 lport_src_id[3];
	u8 fcoe_mac[6];

	port_id = FUNC2(lport->host);
	lport_src_id[2] = (port_id & 0x000000FF);
	lport_src_id[1] = (port_id & 0x0000FF00) >> 8;
	lport_src_id[0] = (port_id & 0x00FF0000) >> 16;
	FUNC1(fcoe_mac, lport_src_id);

	return FUNC3(buf, PAGE_SIZE, "%pM\n", fcoe_mac);
}