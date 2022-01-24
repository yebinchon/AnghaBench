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

/* Variables and functions */
 unsigned char PCI_VPD_LRDT ; 
 scalar_t__ PCI_VPD_LRDT_TAG_SIZE ; 
 unsigned char PCI_VPD_LTIN_ID_STRING ; 
 unsigned char PCI_VPD_LTIN_RO_DATA ; 
 unsigned char PCI_VPD_LTIN_RW_DATA ; 
 scalar_t__ PCI_VPD_SRDT_TAG_SIZE ; 
 unsigned char PCI_VPD_STIN_END ; 
 int FUNC0 (struct pci_dev*,size_t,int,unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 unsigned char FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*) ; 
 unsigned char FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*,...) ; 

__attribute__((used)) static size_t FUNC6(struct pci_dev *dev, size_t old_size)
{
	size_t off = 0;
	unsigned char header[1+2];	/* 1 byte tag, 2 bytes length */

	while (off < old_size &&
	       FUNC0(dev, off, 1, header) == 1) {
		unsigned char tag;

		if (header[0] & PCI_VPD_LRDT) {
			/* Large Resource Data Type Tag */
			tag = FUNC2(header);
			/* Only read length from known tag items */
			if ((tag == PCI_VPD_LTIN_ID_STRING) ||
			    (tag == PCI_VPD_LTIN_RO_DATA) ||
			    (tag == PCI_VPD_LTIN_RW_DATA)) {
				if (FUNC0(dev, off+1, 2,
						 &header[1]) != 2) {
					FUNC5(dev, "invalid large VPD tag %02x size at offset %zu",
						 tag, off + 1);
					return 0;
				}
				off += PCI_VPD_LRDT_TAG_SIZE +
					FUNC1(header);
			}
		} else {
			/* Short Resource Data Type Tag */
			off += PCI_VPD_SRDT_TAG_SIZE +
				FUNC3(header);
			tag = FUNC4(header);
		}

		if (tag == PCI_VPD_STIN_END)	/* End tag descriptor */
			return off;

		if ((tag != PCI_VPD_LTIN_ID_STRING) &&
		    (tag != PCI_VPD_LTIN_RO_DATA) &&
		    (tag != PCI_VPD_LTIN_RW_DATA)) {
			FUNC5(dev, "invalid %s VPD tag %02x at offset %zu",
				 (header[0] & PCI_VPD_LRDT) ? "large" : "short",
				 tag, off);
			return 0;
		}
	}
	return 0;
}