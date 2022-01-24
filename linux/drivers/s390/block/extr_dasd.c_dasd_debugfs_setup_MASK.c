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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (char const*,struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC2(const char *name,
					 struct dentry *base_dentry)
{
	struct dentry *pde;

	if (!base_dentry)
		return NULL;
	pde = FUNC1(name, base_dentry);
	if (!pde || FUNC0(pde))
		return NULL;
	return pde;
}