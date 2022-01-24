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
struct fhci_hcd {int* gpios; int* alow_gpios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct fhci_hcd *fhci, int gpio_nr, bool on)
{
	int gpio = fhci->gpios[gpio_nr];
	bool alow = fhci->alow_gpios[gpio_nr];

	if (!FUNC0(gpio))
		return;

	FUNC1(gpio, on ^ alow);
	FUNC2(5);
}