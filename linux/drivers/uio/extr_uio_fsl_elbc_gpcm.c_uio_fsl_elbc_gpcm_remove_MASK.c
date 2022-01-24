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
struct uio_info {struct uio_info* name; TYPE_1__* mem; int /*<<< orphan*/  (* shutdown ) (struct uio_info*,int) ;struct uio_info* priv; } ;
struct platform_device {int dummy; } ;
struct fsl_elbc_gpcm {struct fsl_elbc_gpcm* name; TYPE_1__* mem; int /*<<< orphan*/  (* shutdown ) (struct uio_info*,int) ;struct fsl_elbc_gpcm* priv; } ;
struct TYPE_2__ {struct uio_info* name; int /*<<< orphan*/  internal_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uio_info*) ; 
 struct uio_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uio_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uio_info*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct uio_info *info = FUNC2(pdev);
	struct fsl_elbc_gpcm *priv = info->priv;

	FUNC3(pdev, NULL);
	FUNC5(info);
	if (priv->shutdown)
		priv->shutdown(info, false);
	FUNC0(info->mem[0].internal_addr);
	FUNC1(info->mem[0].name);
	FUNC1(info->name);
	FUNC1(info);
	FUNC1(priv);

	return 0;

}