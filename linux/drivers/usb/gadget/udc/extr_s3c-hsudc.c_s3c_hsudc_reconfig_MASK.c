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
 scalar_t__ S3C_EDR ; 
 scalar_t__ S3C_EIER ; 
 scalar_t__ S3C_EP0CR ; 
 scalar_t__ S3C_SCR ; 
 int S3C_SCR_DTZIEN_EN ; 
 int S3C_SCR_RRD_EN ; 
 int S3C_SCR_RST_EN ; 
 int S3C_SCR_SUS_EN ; 
 scalar_t__ S3C_TR ; 
 int /*<<< orphan*/  FUNC0 (struct s3c_hsudc*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct s3c_hsudc *hsudc)
{
	FUNC1(0xAA, hsudc->regs + S3C_EDR);
	FUNC1(1, hsudc->regs + S3C_EIER);
	FUNC1(0, hsudc->regs + S3C_TR);
	FUNC1(S3C_SCR_DTZIEN_EN | S3C_SCR_RRD_EN | S3C_SCR_SUS_EN |
			S3C_SCR_RST_EN, hsudc->regs + S3C_SCR);
	FUNC1(0, hsudc->regs + S3C_EP0CR);

	FUNC0(hsudc);
}