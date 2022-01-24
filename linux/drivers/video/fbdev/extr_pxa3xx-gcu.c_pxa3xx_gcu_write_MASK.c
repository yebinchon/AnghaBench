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
struct pxa3xx_gcu_priv {int /*<<< orphan*/  spinlock; TYPE_1__* shared; struct pxa3xx_gcu_batch* ready_last; struct pxa3xx_gcu_batch* ready; struct pxa3xx_gcu_batch* free; } ;
struct pxa3xx_gcu_batch {int* ptr; int length; struct pxa3xx_gcu_batch* next; } ;
struct file {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int num_words; int /*<<< orphan*/  hw_running; int /*<<< orphan*/  num_writes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int E2BIG ; 
 int EFAULT ; 
 int PXA3XX_GCU_BATCH_WORDS ; 
 int FUNC1 (int*,char const*,int) ; 
 int FUNC2 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pxa3xx_gcu_priv* FUNC6 (struct file*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct file *file, const char *buff,
		 size_t count, loff_t *offp)
{
	int ret;
	unsigned long flags;
	struct pxa3xx_gcu_batch	*buffer;
	struct pxa3xx_gcu_priv *priv = FUNC6(file);

	int words = count / 4;

	/* Does not need to be atomic. There's a lock in user space,
	 * but anyhow, this is just for statistics. */
	priv->shared->num_writes++;
	priv->shared->num_words += words;

	/* Last word reserved for batch buffer end command */
	if (words >= PXA3XX_GCU_BATCH_WORDS)
		return -E2BIG;

	/* Wait for a free buffer */
	if (!priv->free) {
		ret = FUNC2(priv);
		if (ret < 0)
			return ret;
	}

	/*
	 * Get buffer from free list
	 */
	FUNC4(&priv->spinlock, flags);
	buffer = priv->free;
	priv->free = buffer->next;
	FUNC5(&priv->spinlock, flags);


	/* Copy data from user into buffer */
	ret = FUNC1(buffer->ptr, buff, words * 4);
	if (ret) {
		FUNC4(&priv->spinlock, flags);
		buffer->next = priv->free;
		priv->free = buffer;
		FUNC5(&priv->spinlock, flags);
		return -EFAULT;
	}

	buffer->length = words;

	/* Append batch buffer end command */
	buffer->ptr[words] = 0x01000000;

	/*
	 * Add buffer to ready list
	 */
	FUNC4(&priv->spinlock, flags);

	buffer->next = NULL;

	if (priv->ready) {
		FUNC0(priv->ready_last == NULL);

		priv->ready_last->next = buffer;
	} else
		priv->ready = buffer;

	priv->ready_last = buffer;

	if (!priv->shared->hw_running)
		FUNC3(priv);

	FUNC5(&priv->spinlock, flags);

	return words * 4;
}