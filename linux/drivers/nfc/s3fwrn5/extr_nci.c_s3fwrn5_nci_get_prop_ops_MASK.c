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
struct nci_driver_ops {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct nci_driver_ops*) ; 
 struct nci_driver_ops* s3fwrn5_nci_prop_ops ; 

void FUNC1(struct nci_driver_ops **ops, size_t *n)
{
	*ops = s3fwrn5_nci_prop_ops;
	*n = FUNC0(s3fwrn5_nci_prop_ops);
}