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
typedef  void* u32 ;
struct gntdev_priv {int /*<<< orphan*/  dmabuf_priv; int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  lock; } ;
struct gntdev_grant_map {int /*<<< orphan*/  pages; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; TYPE_1__* grants; } ;
struct gntdev_dmabuf_export_args {int fd; int /*<<< orphan*/  pages; int /*<<< orphan*/  count; int /*<<< orphan*/  dmabuf_priv; int /*<<< orphan*/  dev; struct gntdev_grant_map* map; struct gntdev_priv* priv; } ;
struct TYPE_2__ {void* ref; void* domid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNTMAP_device_map ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 scalar_t__ FUNC0 (struct gntdev_grant_map*) ; 
 int FUNC1 (struct gntdev_grant_map*) ; 
 struct gntdev_grant_map* FUNC2 (struct gntdev_priv*,int,int) ; 
 int FUNC3 (struct gntdev_dmabuf_export_args*) ; 
 int /*<<< orphan*/  FUNC4 (struct gntdev_priv*,struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  FUNC5 (struct gntdev_priv*,struct gntdev_grant_map*) ; 
 int FUNC6 (struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct gntdev_priv *priv, int flags,
				int count, u32 domid, u32 *refs, u32 *fd)
{
	struct gntdev_grant_map *map;
	struct gntdev_dmabuf_export_args args;
	int i, ret;

	map = FUNC2(priv, flags, count);
	if (FUNC0(map))
		return FUNC1(map);

	for (i = 0; i < count; i++) {
		map->grants[i].domid = domid;
		map->grants[i].ref = refs[i];
	}

	FUNC7(&priv->lock);
	FUNC5(priv, map);
	FUNC8(&priv->lock);

	map->flags |= GNTMAP_host_map;
#if defined(CONFIG_X86)
	map->flags |= GNTMAP_device_map;
#endif

	ret = FUNC6(map);
	if (ret < 0)
		goto out;

	args.priv = priv;
	args.map = map;
	args.dev = priv->dma_dev;
	args.dmabuf_priv = priv->dmabuf_priv;
	args.count = map->count;
	args.pages = map->pages;
	args.fd = -1; /* Shut up unnecessary gcc warning for i386 */

	ret = FUNC3(&args);
	if (ret < 0)
		goto out;

	*fd = args.fd;
	return 0;

out:
	FUNC4(priv, map);
	return ret;
}