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
struct pxa3xx_gcu_priv {int /*<<< orphan*/  spinlock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long ENOSYS ; 
#define  PXA3XX_GCU_IOCTL_RESET 129 
#define  PXA3XX_GCU_IOCTL_WAIT_IDLE 128 
 int /*<<< orphan*/  FUNC0 (struct pxa3xx_gcu_priv*) ; 
 long FUNC1 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pxa3xx_gcu_priv* FUNC4 (struct file*) ; 

__attribute__((used)) static long
FUNC5(struct file *file, unsigned int cmd, unsigned long arg)
{
	unsigned long flags;
	struct pxa3xx_gcu_priv *priv = FUNC4(file);

	switch (cmd) {
	case PXA3XX_GCU_IOCTL_RESET:
		FUNC2(&priv->spinlock, flags);
		FUNC0(priv);
		FUNC3(&priv->spinlock, flags);
		return 0;

	case PXA3XX_GCU_IOCTL_WAIT_IDLE:
		return FUNC1(priv);
	}

	return -ENOSYS;
}