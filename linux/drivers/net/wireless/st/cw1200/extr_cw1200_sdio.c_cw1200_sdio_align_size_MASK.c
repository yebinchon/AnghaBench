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
struct hwbus_priv {int /*<<< orphan*/  func; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ no_nptb; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDIO_BLOCK_SIZE ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static size_t FUNC2(struct hwbus_priv *self, size_t size)
{
	if (self->pdata->no_nptb)
		size = FUNC0(size, SDIO_BLOCK_SIZE);
	else
		size = FUNC1(self->func, size);

	return size;
}