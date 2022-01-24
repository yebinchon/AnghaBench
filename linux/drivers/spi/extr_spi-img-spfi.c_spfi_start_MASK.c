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
typedef  int /*<<< orphan*/  u32 ;
struct img_spfi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPFI_CONTROL ; 
 int /*<<< orphan*/  SPFI_CONTROL_SPFI_EN ; 
 int /*<<< orphan*/  FUNC0 (struct img_spfi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_spfi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct img_spfi *spfi)
{
	u32 val;

	val = FUNC0(spfi, SPFI_CONTROL);
	val |= SPFI_CONTROL_SPFI_EN;
	FUNC1(spfi, val, SPFI_CONTROL);
}