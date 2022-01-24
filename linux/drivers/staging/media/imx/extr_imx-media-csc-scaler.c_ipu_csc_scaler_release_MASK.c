#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipu_csc_scaler_priv {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct ipu_csc_scaler_ctx*) ; 
 struct ipu_csc_scaler_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_csc_scaler_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ipu_csc_scaler_priv* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct ipu_csc_scaler_priv *priv = FUNC6(file);
	struct ipu_csc_scaler_ctx *ctx = FUNC1(file->private_data);

	FUNC0(priv->dev, "Releasing instance %p\n", ctx);

	FUNC5(ctx->fh.m2m_ctx);
	FUNC3(&ctx->fh);
	FUNC4(&ctx->fh);
	FUNC2(ctx);

	return 0;
}