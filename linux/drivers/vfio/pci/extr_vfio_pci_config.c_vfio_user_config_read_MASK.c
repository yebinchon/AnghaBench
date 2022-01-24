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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev, int offset,
				 __le32 *val, int count)
{
	int ret = -EINVAL;
	u32 tmp_val = 0;

	switch (count) {
	case 1:
	{
		u8 tmp;
		ret = FUNC1(pdev, offset, &tmp);
		tmp_val = tmp;
		break;
	}
	case 2:
	{
		u16 tmp;
		ret = FUNC3(pdev, offset, &tmp);
		tmp_val = tmp;
		break;
	}
	case 4:
		ret = FUNC2(pdev, offset, &tmp_val);
		break;
	}

	*val = FUNC0(tmp_val);

	return ret;
}