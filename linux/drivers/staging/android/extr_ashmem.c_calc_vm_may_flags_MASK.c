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
typedef  int vm_flags_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROT_EXEC ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 int /*<<< orphan*/  VM_MAYEXEC ; 
 int /*<<< orphan*/  VM_MAYREAD ; 
 int /*<<< orphan*/  VM_MAYWRITE ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline vm_flags_t FUNC1(unsigned long prot)
{
	return FUNC0(prot, PROT_READ,  VM_MAYREAD) |
	       FUNC0(prot, PROT_WRITE, VM_MAYWRITE) |
	       FUNC0(prot, PROT_EXEC,  VM_MAYEXEC);
}