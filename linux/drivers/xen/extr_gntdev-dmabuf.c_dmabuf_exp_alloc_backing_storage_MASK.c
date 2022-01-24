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
struct gntdev_priv {int dummy; } ;
struct gntdev_grant_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct gntdev_grant_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int GNTDEV_DMA_FLAG_COHERENT ; 
 int GNTDEV_DMA_FLAG_WC ; 
 int FUNC1 (int) ; 
 struct gntdev_grant_map* FUNC2 (struct gntdev_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct gntdev_grant_map *
FUNC6(struct gntdev_priv *priv, int dmabuf_flags,
				 int count)
{
	struct gntdev_grant_map *map;

	if (FUNC5(count <= 0))
		return FUNC0(-EINVAL);

	if ((dmabuf_flags & GNTDEV_DMA_FLAG_WC) &&
	    (dmabuf_flags & GNTDEV_DMA_FLAG_COHERENT)) {
		FUNC4("Wrong dma-buf flags: 0x%x\n", dmabuf_flags);
		return FUNC0(-EINVAL);
	}

	map = FUNC2(priv, count, dmabuf_flags);
	if (!map)
		return FUNC0(-ENOMEM);

	if (FUNC5(FUNC1(count))) {
		FUNC4("can't map %d pages: over limit\n", count);
		FUNC3(NULL, map);
		return FUNC0(-ENOMEM);
	}
	return map;
}