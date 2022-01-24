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
struct sg_table {int dummy; } ;
struct ion_dma_buf_attachment {int /*<<< orphan*/  list; int /*<<< orphan*/  dev; struct sg_table* table; } ;
struct ion_buffer {int /*<<< orphan*/  lock; int /*<<< orphan*/  attachments; int /*<<< orphan*/  sg_table; } ;
struct dma_buf_attachment {struct ion_dma_buf_attachment* priv; int /*<<< orphan*/  dev; } ;
struct dma_buf {struct ion_buffer* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sg_table*) ; 
 struct sg_table* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ion_dma_buf_attachment*) ; 
 struct ion_dma_buf_attachment* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dma_buf *dmabuf,
			      struct dma_buf_attachment *attachment)
{
	struct ion_dma_buf_attachment *a;
	struct sg_table *table;
	struct ion_buffer *buffer = dmabuf->priv;

	a = FUNC4(sizeof(*a), GFP_KERNEL);
	if (!a)
		return -ENOMEM;

	table = FUNC2(buffer->sg_table);
	if (FUNC1(table)) {
		FUNC3(a);
		return -ENOMEM;
	}

	a->table = table;
	a->dev = attachment->dev;
	FUNC0(&a->list);

	attachment->priv = a;

	FUNC6(&buffer->lock);
	FUNC5(&a->list, &buffer->attachments);
	FUNC7(&buffer->lock);

	return 0;
}