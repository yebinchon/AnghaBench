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
typedef  int /*<<< orphan*/  u8 ;
struct vnt_private {scalar_t__ rf_type; scalar_t__ bb_type; int* bb_vga; int /*<<< orphan*/  packet_type; } ;

/* Variables and functions */
 scalar_t__ BB_TYPE_11A ; 
 scalar_t__ BB_TYPE_11B ; 
 scalar_t__ BB_TYPE_11G ; 
 int /*<<< orphan*/  MESSAGE_REQUEST_BBREG ; 
 scalar_t__ RF_AIROHA7230 ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*) ; 

void FUNC6(struct vnt_private *priv)
{
	if (priv->rf_type == RF_AIROHA7230 && priv->bb_type == BB_TYPE_11A)
		FUNC2(priv, BB_TYPE_11G);
	else
		FUNC2(priv, priv->bb_type);

	priv->packet_type = FUNC1(priv);

	if (priv->bb_type == BB_TYPE_11A)
		FUNC0(priv, MESSAGE_REQUEST_BBREG, 0x88, 0x03);
	else if (priv->bb_type == BB_TYPE_11B)
		FUNC0(priv, MESSAGE_REQUEST_BBREG, 0x88, 0x02);
	else if (priv->bb_type == BB_TYPE_11G)
		FUNC0(priv, MESSAGE_REQUEST_BBREG, 0x88, 0x08);

	FUNC5(priv);
	FUNC3(priv, (u8)priv->bb_type);

	if (priv->bb_type == BB_TYPE_11A) {
		if (priv->rf_type == RF_AIROHA7230) {
			priv->bb_vga[0] = 0x20;

			FUNC0(priv, MESSAGE_REQUEST_BBREG,
					   0xe7, priv->bb_vga[0]);
		}

		priv->bb_vga[2] = 0x10;
		priv->bb_vga[3] = 0x10;
	} else {
		if (priv->rf_type == RF_AIROHA7230) {
			priv->bb_vga[0] = 0x1c;

			FUNC0(priv, MESSAGE_REQUEST_BBREG,
					   0xe7, priv->bb_vga[0]);
		}

		priv->bb_vga[2] = 0x0;
		priv->bb_vga[3] = 0x0;
	}

	FUNC4(priv, priv->bb_vga[0]);
}