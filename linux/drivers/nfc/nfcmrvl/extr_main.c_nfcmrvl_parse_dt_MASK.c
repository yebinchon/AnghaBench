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
struct nfcmrvl_platform_data {int reset_n_io; int hci_muxed; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct device_node *node,
		     struct nfcmrvl_platform_data *pdata)
{
	int reset_n_io;

	reset_n_io = FUNC2(node, "reset-n-io", 0);
	if (reset_n_io < 0) {
		FUNC4("no reset-n-io config\n");
	} else if (!FUNC0(reset_n_io)) {
		FUNC3("invalid reset-n-io GPIO\n");
		return reset_n_io;
	}
	pdata->reset_n_io = reset_n_io;

	if (FUNC1(node, "hci-muxed", NULL))
		pdata->hci_muxed = 1;
	else
		pdata->hci_muxed = 0;

	return 0;
}