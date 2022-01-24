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
typedef  size_t u8 ;
struct wilc_priv {void** wilc_ptk; void** wilc_gtk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct wilc_priv *priv, u8 idx)
{
	if (!priv->wilc_gtk[idx]) {
		priv->wilc_gtk[idx] = FUNC0(sizeof(*priv->wilc_gtk[idx]),
					      GFP_KERNEL);
		if (!priv->wilc_gtk[idx])
			return -ENOMEM;
	}

	if (!priv->wilc_ptk[idx]) {
		priv->wilc_ptk[idx] = FUNC0(sizeof(*priv->wilc_ptk[idx]),
					      GFP_KERNEL);
		if (!priv->wilc_ptk[idx])
			return -ENOMEM;
	}

	return 0;
}