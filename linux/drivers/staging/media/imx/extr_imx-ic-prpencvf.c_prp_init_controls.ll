; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { %struct.v4l2_ctrl_handler, %struct.imx_ic_priv* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.imx_ic_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }

@prp_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ROTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*)* @prp_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_init_controls(%struct.prp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.prp_priv*, align 8
  %4 = alloca %struct.imx_ic_priv*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %3, align 8
  %7 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %7, i32 0, i32 1
  %9 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %8, align 8
  store %struct.imx_ic_priv* %9, %struct.imx_ic_priv** %4, align 8
  %10 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %11 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %10, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %5, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 3)
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %16 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %14, i32* @prp_ctrl_ops, i32 %15, i32 0, i32 1, i32 1, i32 0)
  %17 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %18 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %19 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %17, i32* @prp_ctrl_ops, i32 %18, i32 0, i32 1, i32 1, i32 0)
  %20 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %21 = load i32, i32* @V4L2_CID_ROTATE, align 4
  %22 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %20, i32* @prp_ctrl_ops, i32 %21, i32 0, i32 270, i32 90, i32 0)
  %23 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %24 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %25 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %23, %struct.v4l2_ctrl_handler** %26, align 8
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %36)
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %40 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
