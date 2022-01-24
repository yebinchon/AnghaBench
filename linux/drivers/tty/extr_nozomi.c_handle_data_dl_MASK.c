#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct nozomi {TYPE_1__* pdev; int /*<<< orphan*/  reg_fcr; } ;
typedef  enum port_type { ____Placeholder_port_type } port_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int,struct nozomi*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nozomi *dc, enum port_type port, u8 *toggle,
			u16 read_iir, u16 mask1, u16 mask2)
{
	if (*toggle == 0 && read_iir & mask1) {
		if (FUNC1(port, dc)) {
			FUNC2(mask1, dc->reg_fcr);
			*toggle = !(*toggle);
		}

		if (read_iir & mask2) {
			if (FUNC1(port, dc)) {
				FUNC2(mask2, dc->reg_fcr);
				*toggle = !(*toggle);
			}
		}
	} else if (*toggle == 1 && read_iir & mask2) {
		if (FUNC1(port, dc)) {
			FUNC2(mask2, dc->reg_fcr);
			*toggle = !(*toggle);
		}

		if (read_iir & mask1) {
			if (FUNC1(port, dc)) {
				FUNC2(mask1, dc->reg_fcr);
				*toggle = !(*toggle);
			}
		}
	} else {
		FUNC0(&dc->pdev->dev, "port out of sync!, toggle:%d\n",
			*toggle);
		return 0;
	}
	return 1;
}