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
struct faraday_pci {scalar_t__ base; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ PCI_CONFIG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PCI_CONF_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 scalar_t__ PCI_DATA ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct faraday_pci *p, int bus_number,
				       unsigned int fn, int config, int size,
				       u32 *value)
{
	FUNC7(FUNC0(bus_number) |
			FUNC1(FUNC5(fn)) |
			FUNC2(FUNC4(fn)) |
			FUNC3(config) |
			PCI_CONF_ENABLE,
			p->base + PCI_CONFIG);

	*value = FUNC6(p->base + PCI_DATA);

	if (size == 1)
		*value = (*value >> (8 * (config & 3))) & 0xFF;
	else if (size == 2)
		*value = (*value >> (8 * (config & 3))) & 0xFFFF;

	return PCIBIOS_SUCCESSFUL;
}