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
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 size_t ANDROID_WIFI_CMD_COUNTRY ; 
 int _SUCCESS ; 
 int /*<<< orphan*/ * android_wifi_cmd_str ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (struct adapter*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, char *command,
			     int total_len)
{
	struct adapter *adapter = (struct adapter *)FUNC0(net);
	char *country_code = command + FUNC2(android_wifi_cmd_str[ANDROID_WIFI_CMD_COUNTRY]) + 1;
	int ret;

	ret = FUNC1(adapter, country_code);
	return (ret == _SUCCESS) ? 0 : -1;
}