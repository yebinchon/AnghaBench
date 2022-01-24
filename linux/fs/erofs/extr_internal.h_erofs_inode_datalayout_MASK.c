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

/* Variables and functions */
 int /*<<< orphan*/  EROFS_I_DATALAYOUT_BIT ; 
 int /*<<< orphan*/  EROFS_I_DATALAYOUT_BITS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC1(unsigned int value)
{
	return FUNC0(value, EROFS_I_DATALAYOUT_BIT,
			      EROFS_I_DATALAYOUT_BITS);
}