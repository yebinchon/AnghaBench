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
struct iproc_msi {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct iproc_msi*,unsigned long) ; 

__attribute__((used)) static inline unsigned long FUNC1(struct iproc_msi *msi,
						     unsigned long hwirq)
{
	return (hwirq - FUNC0(msi, hwirq));
}