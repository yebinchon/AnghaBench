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
struct s3c_hsudc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ S3C_IR ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct s3c_hsudc *hsudc, int ep_addr)
{
	ep_addr &= USB_ENDPOINT_NUMBER_MASK;
	FUNC0(ep_addr, hsudc->regs + S3C_IR);
}