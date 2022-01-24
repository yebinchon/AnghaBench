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
struct reset_controller_dev {int dummy; } ;
struct brcmstb_reset {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int SW_INIT_BANK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ SW_INIT_CLEAR ; 
 struct brcmstb_reset* FUNC2 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
				  unsigned long id)
{
	unsigned int off = FUNC0(id) * SW_INIT_BANK_SIZE;
	struct brcmstb_reset *priv = FUNC2(rcdev);

	FUNC4(FUNC1(id), priv->base + off + SW_INIT_CLEAR);
	/* Maximum reset delay after de-asserting a line and seeing block
	 * operation is typically 14us for the worst case, build some slack
	 * here.
	 */
	FUNC3(100, 200);

	return 0;
}