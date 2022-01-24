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
struct yenta_socket {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned int FUNC0 (struct yenta_socket*,int) ; 
 unsigned char FUNC1 (struct yenta_socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct yenta_socket* FUNC3 (struct pci_dev*) ; 
 int FUNC4 (char*,scalar_t__,char*,...) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *yentadev, struct device_attribute *attr, char *buf)
{
	struct pci_dev *dev = FUNC5(yentadev);
	struct yenta_socket *socket = FUNC3(dev);
	int offset = 0, i;

	offset = FUNC4(buf, PAGE_SIZE, "CB registers:");
	for (i = 0; i < 0x24; i += 4) {
		unsigned val;
		if (!(i & 15))
			offset += FUNC4(buf + offset, PAGE_SIZE - offset, "\n%02x:", i);
		val = FUNC0(socket, i);
		offset += FUNC4(buf + offset, PAGE_SIZE - offset, " %08x", val);
	}

	offset += FUNC4(buf + offset, PAGE_SIZE - offset, "\n\nExCA registers:");
	for (i = 0; i < 0x45; i++) {
		unsigned char val;
		if (!(i & 7)) {
			if (i & 8) {
				FUNC2(buf + offset, " -", 2);
				offset += 2;
			} else
				offset += FUNC4(buf + offset, PAGE_SIZE - offset, "\n%02x:", i);
		}
		val = FUNC1(socket, i);
		offset += FUNC4(buf + offset, PAGE_SIZE - offset, " %02x", val);
	}
	buf[offset++] = '\n';
	return offset;
}