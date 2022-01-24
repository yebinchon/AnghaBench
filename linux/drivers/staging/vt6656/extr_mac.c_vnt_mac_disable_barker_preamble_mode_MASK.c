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
typedef  scalar_t__ u8 ;
struct vnt_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ EnCFG_BarkerPream ; 
 int /*<<< orphan*/  MAC_REG_ENCFG2 ; 
 int /*<<< orphan*/  MESSAGE_REQUEST_MACREG ; 
 int /*<<< orphan*/  MESSAGE_TYPE_WRITE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC2(struct vnt_private *priv)
{
	u8 data[2];

	data[0] = 0;
	data[1] = EnCFG_BarkerPream;

	FUNC1(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG2,
			MESSAGE_REQUEST_MACREG, FUNC0(data), data);
}