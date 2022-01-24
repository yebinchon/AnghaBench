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
struct gntdev_dmabuf_priv {struct file* filp; int /*<<< orphan*/  imp_list; int /*<<< orphan*/  exp_wait_list; int /*<<< orphan*/  exp_list; int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct gntdev_dmabuf_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gntdev_dmabuf_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct gntdev_dmabuf_priv *FUNC4(struct file *filp)
{
	struct gntdev_dmabuf_priv *priv;

	priv = FUNC2(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	FUNC3(&priv->lock);
	FUNC1(&priv->exp_list);
	FUNC1(&priv->exp_wait_list);
	FUNC1(&priv->imp_list);

	priv->filp = filp;

	return priv;
}