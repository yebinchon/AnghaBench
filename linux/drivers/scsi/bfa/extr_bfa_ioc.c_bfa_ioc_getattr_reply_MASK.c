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
struct bfi_ioc_attr_s {scalar_t__ port_mode; void* mfg_year; void* maxfrsize; void* card_type; void* adapter_prop; } ;
struct bfa_ioc_s {int fcmode; struct bfi_ioc_attr_s* attr; } ;

/* Variables and functions */
 scalar_t__ BFI_PORT_MODE_FC ; 
 int /*<<< orphan*/  IOC_E_FWRSP_GETATTR ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_ioc_s *ioc)
{
	struct bfi_ioc_attr_s	*attr = ioc->attr;

	attr->adapter_prop  = FUNC1(attr->adapter_prop);
	attr->card_type     = FUNC1(attr->card_type);
	attr->maxfrsize	    = FUNC0(attr->maxfrsize);
	ioc->fcmode	= (attr->port_mode == BFI_PORT_MODE_FC);
	attr->mfg_year	= FUNC0(attr->mfg_year);

	FUNC2(ioc, IOC_E_FWRSP_GETATTR);
}