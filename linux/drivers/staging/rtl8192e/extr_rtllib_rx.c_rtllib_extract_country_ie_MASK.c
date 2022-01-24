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
typedef  int /*<<< orphan*/  u8 ;
struct rtllib_network {scalar_t__ CountryIeLen; int /*<<< orphan*/  ssid; int /*<<< orphan*/  CountryIeBuf; } ;
struct rtllib_info_element {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct rtllib_device {int /*<<< orphan*/  dev; scalar_t__ FirstIe_InScan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtllib_device*) ; 
 scalar_t__ FUNC1 (struct rtllib_device*) ; 
 scalar_t__ FUNC2 (struct rtllib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rtllib_device*,int) ; 

__attribute__((used)) static inline void FUNC8(
	struct rtllib_device *ieee,
	struct rtllib_info_element *info_element,
	struct rtllib_network *network,
	u8 *addr2)
{
	if (FUNC1(ieee)) {
		if (info_element->len != 0) {
			FUNC5(network->CountryIeBuf, info_element->data,
			       info_element->len);
			network->CountryIeLen = info_element->len;

			if (!FUNC0(ieee)) {
				if (FUNC7(ieee, false) &&
				    ieee->FirstIe_InScan)
					FUNC6(ieee->dev,
						    "Received beacon ContryIE, SSID: <%s>\n",
						    network->ssid);
				FUNC4(ieee, addr2,
						       info_element->len,
						       info_element->data);
			}
		}

		if (FUNC2(ieee, addr2))
			FUNC3(ieee);
	}
}