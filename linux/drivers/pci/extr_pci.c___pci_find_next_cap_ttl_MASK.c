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
typedef  int u16 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*,unsigned int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct pci_bus *bus, unsigned int devfn,
				   u8 pos, int cap, int *ttl)
{
	u8 id;
	u16 ent;

	FUNC0(bus, devfn, pos, &pos);

	while ((*ttl)--) {
		if (pos < 0x40)
			break;
		pos &= ~3;
		FUNC1(bus, devfn, pos, &ent);

		id = ent & 0xff;
		if (id == 0xff)
			break;
		if (id == cap)
			return pos;
		pos = (ent >> 8);
	}
	return 0;
}