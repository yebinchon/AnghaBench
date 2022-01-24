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
struct ql_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_EN ; 
 int INTR_EN_EI ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ql_adapter *qdev)
{
	FUNC0(qdev, INTR_EN, (INTR_EN_EI << 16));
}