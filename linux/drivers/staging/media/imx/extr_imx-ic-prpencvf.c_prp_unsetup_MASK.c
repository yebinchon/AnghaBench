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
struct prp_priv {int /*<<< orphan*/  rot_mode; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct prp_priv*,int) ; 

__attribute__((used)) static void FUNC4(struct prp_priv *priv,
			enum vb2_buffer_state state)
{
	if (FUNC0(priv->rot_mode))
		FUNC2(priv);
	else
		FUNC1(priv);

	FUNC3(priv, state);
}