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
struct csi_priv {int /*<<< orphan*/  smfc; int /*<<< orphan*/  idmac_ch; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csi_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct csi_priv *priv,
			      enum vb2_buffer_state state)
{
	FUNC1(priv->idmac_ch);
	FUNC2(priv->smfc);

	FUNC0(priv, state);
}