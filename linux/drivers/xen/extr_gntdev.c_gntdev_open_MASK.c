#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
struct gntdev_priv {int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  mm; TYPE_1__ mn; int /*<<< orphan*/  dmabuf_priv; int /*<<< orphan*/  lock; int /*<<< orphan*/  freeable_maps; int /*<<< orphan*/  maps; } ;
struct file {struct gntdev_priv* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  this_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 TYPE_2__ gntdev_miscdev ; 
 int /*<<< orphan*/  gntdev_mmu_ops ; 
 int /*<<< orphan*/  FUNC7 (struct gntdev_priv*) ; 
 struct gntdev_priv* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct gntdev_priv*) ; 
 scalar_t__ use_ptemod ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *flip)
{
	struct gntdev_priv *priv;
	int ret = 0;

	priv = FUNC8(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC1(&priv->maps);
	FUNC1(&priv->freeable_maps);
	FUNC11(&priv->lock);

#ifdef CONFIG_XEN_GNTDEV_DMABUF
	priv->dmabuf_priv = gntdev_dmabuf_init(flip);
	if (IS_ERR(priv->dmabuf_priv)) {
		ret = PTR_ERR(priv->dmabuf_priv);
		kfree(priv);
		return ret;
	}
#endif

	if (use_ptemod) {
		priv->mm = FUNC5(current);
		if (!priv->mm) {
			FUNC7(priv);
			return -ENOMEM;
		}
		priv->mn.ops = &gntdev_mmu_ops;
		ret = FUNC10(&priv->mn, priv->mm);
		FUNC9(priv->mm);
	}

	if (ret) {
		FUNC7(priv);
		return ret;
	}

	flip->private_data = priv;
#ifdef CONFIG_XEN_GRANT_DMA_ALLOC
	priv->dma_dev = gntdev_miscdev.this_device;
	dma_coerce_mask_and_coherent(priv->dma_dev, DMA_BIT_MASK(64));
#endif
	FUNC12("priv %p\n", priv);

	return 0;
}