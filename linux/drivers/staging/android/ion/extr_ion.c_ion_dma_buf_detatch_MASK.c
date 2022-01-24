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
struct ion_dma_buf_attachment {int /*<<< orphan*/  table; int /*<<< orphan*/  list; } ;
struct ion_buffer {int /*<<< orphan*/  lock; } ;
struct dma_buf_attachment {struct ion_dma_buf_attachment* priv; } ;
struct dma_buf {struct ion_buffer* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ion_dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dma_buf *dmabuf,
				struct dma_buf_attachment *attachment)
{
	struct ion_dma_buf_attachment *a = attachment->priv;
	struct ion_buffer *buffer = dmabuf->priv;

	FUNC3(&buffer->lock);
	FUNC2(&a->list);
	FUNC4(&buffer->lock);
	FUNC0(a->table);

	FUNC1(a);
}