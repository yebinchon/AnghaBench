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
struct gntdev_dmabuf_wait_obj {int dummy; } ;
struct gntdev_dmabuf_priv {int dummy; } ;
typedef  struct gntdev_dmabuf_wait_obj gntdev_dmabuf ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gntdev_dmabuf_wait_obj*) ; 
 int FUNC1 (struct gntdev_dmabuf_wait_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct gntdev_dmabuf_priv*,struct gntdev_dmabuf_wait_obj*) ; 
 struct gntdev_dmabuf_wait_obj* FUNC3 (struct gntdev_dmabuf_priv*,int) ; 
 struct gntdev_dmabuf_wait_obj* FUNC4 (struct gntdev_dmabuf_priv*,struct gntdev_dmabuf_wait_obj*) ; 
 int FUNC5 (struct gntdev_dmabuf_wait_obj*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct gntdev_dmabuf_priv *priv, int fd,
				    int wait_to_ms)
{
	struct gntdev_dmabuf *gntdev_dmabuf;
	struct gntdev_dmabuf_wait_obj *obj;
	int ret;

	FUNC6("Will wait for dma-buf with fd %d\n", fd);
	/*
	 * Try to find the DMA buffer: if not found means that
	 * either the buffer has already been released or file descriptor
	 * provided is wrong.
	 */
	gntdev_dmabuf = FUNC3(priv, fd);
	if (FUNC0(gntdev_dmabuf))
		return FUNC1(gntdev_dmabuf);

	/*
	 * gntdev_dmabuf still exists and is reference count locked by us now,
	 * so prepare to wait: allocate wait object and add it to the wait list,
	 * so we can find it on release.
	 */
	obj = FUNC4(priv, gntdev_dmabuf);
	if (FUNC0(obj))
		return FUNC1(obj);

	ret = FUNC5(obj, wait_to_ms);
	FUNC2(priv, obj);
	return ret;
}