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
typedef  int /*<<< orphan*/  u64 ;
struct vnt_private {int dummy; } ;
typedef  int /*<<< orphan*/  le_mc ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_REG_MAR0 ; 
 int /*<<< orphan*/  MESSAGE_REQUEST_MACREG ; 
 int /*<<< orphan*/  MESSAGE_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC2(struct vnt_private *priv, u64 mc_filter)
{
	__le64 le_mc = FUNC0(mc_filter);

	FUNC1(priv, MESSAGE_TYPE_WRITE, MAC_REG_MAR0,
			MESSAGE_REQUEST_MACREG, sizeof(le_mc), (u8 *)&le_mc);
}