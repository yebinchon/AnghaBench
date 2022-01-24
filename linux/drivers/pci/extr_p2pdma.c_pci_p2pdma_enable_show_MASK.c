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
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

ssize_t FUNC2(char *page, struct pci_dev *p2p_dev,
			       bool use_p2pdma)
{
	if (!use_p2pdma)
		return FUNC1(page, "0\n");

	if (!p2p_dev)
		return FUNC1(page, "1\n");

	return FUNC1(page, "%s\n", FUNC0(p2p_dev));
}