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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct cw1200_common {int /*<<< orphan*/  hwbus_priv; TYPE_1__* hwbus_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ST90TDS_CONFIG_REG_ID ; 
 int /*<<< orphan*/  ST90TDS_SRAM_BASE_ADDR_REG_ID ; 
 int FUNC0 (struct cw1200_common*,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cw1200_common*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct cw1200_common *priv, u32 addr, void *buf,
			 size_t buf_len, u32 prefetch, u16 port_addr)
{
	u32 val32 = 0;
	int i, ret;

	if ((buf_len / 2) >= 0x1000) {
		FUNC4("Can't read more than 0xfff words.\n");
		return -EINVAL;
	}

	priv->hwbus_ops->lock(priv->hwbus_priv);
	/* Write address */
	ret = FUNC2(priv, ST90TDS_SRAM_BASE_ADDR_REG_ID, addr);
	if (ret < 0) {
		FUNC4("Can't write address register.\n");
		goto out;
	}

	/* Read CONFIG Register Value - We will read 32 bits */
	ret = FUNC1(priv, ST90TDS_CONFIG_REG_ID, &val32);
	if (ret < 0) {
		FUNC4("Can't read config register.\n");
		goto out;
	}

	/* Set PREFETCH bit */
	ret = FUNC2(priv, ST90TDS_CONFIG_REG_ID,
					val32 | prefetch);
	if (ret < 0) {
		FUNC4("Can't write prefetch bit.\n");
		goto out;
	}

	/* Check for PRE-FETCH bit to be cleared */
	for (i = 0; i < 20; i++) {
		ret = FUNC1(priv, ST90TDS_CONFIG_REG_ID, &val32);
		if (ret < 0) {
			FUNC4("Can't check prefetch bit.\n");
			goto out;
		}
		if (!(val32 & prefetch))
			break;

		FUNC3(i);
	}

	if (val32 & prefetch) {
		FUNC4("Prefetch bit is not cleared.\n");
		goto out;
	}

	/* Read data port */
	ret = FUNC0(priv, port_addr, buf, buf_len, 0);
	if (ret < 0) {
		FUNC4("Can't read data port.\n");
		goto out;
	}

out:
	priv->hwbus_ops->unlock(priv->hwbus_priv);
	return ret;
}