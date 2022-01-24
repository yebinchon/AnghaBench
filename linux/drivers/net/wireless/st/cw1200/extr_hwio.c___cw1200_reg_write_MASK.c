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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct cw1200_common {int /*<<< orphan*/  hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int (* hwbus_memcpy_toio ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int FUNC3(struct cw1200_common *priv, u16 addr,
				const void *buf, size_t buf_len, int buf_id)
{
	u16 addr_sdio;
	u32 sdio_reg_addr_17bit;

	/* Convert to SDIO Register Address */
	addr_sdio = FUNC1(addr);
	sdio_reg_addr_17bit = FUNC0(buf_id, 0, 0, addr_sdio);

	return priv->hwbus_ops->hwbus_memcpy_toio(priv->hwbus_priv,
						sdio_reg_addr_17bit,
						buf, buf_len);
}