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
typedef  int u8 ;
typedef  int u16 ;
struct cw1200_common {int conf_listen_interval; int hw_refclk; int /*<<< orphan*/  bt_present; TYPE_1__* sdd; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int* data; int size; } ;

/* Variables and functions */
#define  SDD_PTA_CFG_ELT_ID 129 
#define  SDD_REFERENCE_FREQUENCY_ELT_ID 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct cw1200_common *priv)
{
	const u8 *p = priv->sdd->data;
	int ret = 0;

	while (p + 2 <= priv->sdd->data + priv->sdd->size) {
		if (p + p[1] + 2 > priv->sdd->data + priv->sdd->size) {
			FUNC2("Malformed sdd structure\n");
			return -1;
		}
		switch (p[0]) {
		case SDD_PTA_CFG_ELT_ID: {
			u16 v;
			if (p[1] < 4) {
				FUNC2("SDD_PTA_CFG_ELT_ID malformed\n");
				ret = -1;
				break;
			}
			v = FUNC0(*((__le16 *)(p + 2)));
			if (!v)  /* non-zero means this is enabled */
				break;

			v = FUNC0(*((__le16 *)(p + 4)));
			priv->conf_listen_interval = (v >> 7) & 0x1F;
			FUNC1("PTA found; Listen Interval %d\n",
				 priv->conf_listen_interval);
			break;
		}
		case SDD_REFERENCE_FREQUENCY_ELT_ID: {
			u16 clk = FUNC0(*((__le16 *)(p + 2)));
			if (clk != priv->hw_refclk)
				FUNC2("SDD file doesn't match configured refclk (%d vs %d)\n",
					clk, priv->hw_refclk);
			break;
		}
		default:
			break;
		}
		p += p[1] + 2;
	}

	if (!priv->bt_present) {
		FUNC1("PTA element NOT found.\n");
		priv->conf_listen_interval = 0;
	}
	return ret;
}