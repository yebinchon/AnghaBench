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

/* Variables and functions */
 int /*<<< orphan*/  H2C_PKT_CATEGORY ; 
 int /*<<< orphan*/  H2C_PKT_CMD_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(u8 *h2c_pkt, u8 sub_id)
{
	FUNC0(h2c_pkt, H2C_PKT_CATEGORY);
	FUNC1(h2c_pkt, H2C_PKT_CMD_ID);
	FUNC2(h2c_pkt, sub_id);
}