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
typedef  int u_short ;
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  TCIC_AUX ; 
 int /*<<< orphan*/  TCIC_MODE ; 
 int TCIC_MODE_PGMMASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(u_short reg, u_short data)
{
    u_char mode = (FUNC0(TCIC_MODE) & TCIC_MODE_PGMMASK) | reg;
    FUNC1(TCIC_MODE, mode);
    FUNC2(TCIC_AUX, data);
}