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
typedef  int /*<<< orphan*/  u64 ;
struct zpci_dev {int /*<<< orphan*/  fh; } ;
struct ism_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 struct zpci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ism_dev *ism, void *data,
				  unsigned long offset, unsigned long len)
{
	struct zpci_dev *zdev = FUNC2(ism->pdev);
	u64 req = FUNC0(zdev->fh, 2, 8);

	while (len > 0) {
		FUNC1(data, req, offset);
		offset += 8;
		data += 8;
		len -= 8;
	}
}