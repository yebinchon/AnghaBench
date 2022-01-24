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
struct vnt_rx_desc {int /*<<< orphan*/  rd_info; } ;
struct TYPE_2__ {int rx_descs0; } ;
struct vnt_private {struct vnt_rx_desc* aRD0Ring; TYPE_1__ opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,struct vnt_rx_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vnt_private *priv)
{
	int i;

	for (i = 0; i < priv->opts.rx_descs0; i++) {
		struct vnt_rx_desc *desc = &priv->aRD0Ring[i];

		FUNC0(priv, desc);
		FUNC1(desc->rd_info);
	}
}