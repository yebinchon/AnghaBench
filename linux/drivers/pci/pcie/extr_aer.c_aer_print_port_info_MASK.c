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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct aer_err_info {int id; size_t severity; scalar_t__ multi_error_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * aer_error_severity_string ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev, struct aer_err_info *info)
{
	u8 bus = info->id >> 8;
	u8 devfn = info->id & 0xff;

	FUNC3(dev, "%s%s error received: %04x:%02x:%02x.%d\n",
		 info->multi_error_valid ? "Multiple " : "",
		 aer_error_severity_string[info->severity],
		 FUNC2(dev->bus), bus, FUNC1(devfn),
		 FUNC0(devfn));
}