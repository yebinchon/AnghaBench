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
typedef  int /*<<< orphan*/  uint16_t ;
struct qla_hw_data {struct nvram_81xx* nvram; } ;
struct nvram_81xx {int /*<<< orphan*/  enhanced_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_0 ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint16_t FUNC4(struct qla_hw_data *ha)
{
	uint16_t mb4 = BIT_0;

	if (FUNC2(ha) || FUNC0(ha) || FUNC1(ha)) {
		struct nvram_81xx *nv = ha->nvram;

		mb4 |= FUNC3(nv->enhanced_features);
	}

	return mb4;
}