; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdic_priv = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@vdic_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_DEINTERLACING_MODE = common dso_local global i32 0, align 4
@HIGH_MOTION = common dso_local global i32 0, align 4
@vdic_ctrl_motion_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdic_priv*)* @vdic_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_init_controls(%struct.vdic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdic_priv*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca i32, align 4
  store %struct.vdic_priv* %0, %struct.vdic_priv** %3, align 8
  %6 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %7 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %6, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %7, %struct.v4l2_ctrl_handler** %4, align 8
  %8 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %8, i32 1)
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %11 = load i32, i32* @V4L2_CID_DEINTERLACING_MODE, align 4
  %12 = load i32, i32* @HIGH_MOTION, align 4
  %13 = load i32, i32* @HIGH_MOTION, align 4
  %14 = load i32, i32* @vdic_ctrl_motion_menu, align 4
  %15 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %10, i32* @vdic_ctrl_ops, i32 %11, i32 %12, i32 0, i32 %13, i32 %14)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %17 = load %struct.vdic_priv*, %struct.vdic_priv** %3, align 8
  %18 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %16, %struct.v4l2_ctrl_handler** %19, align 8
  %20 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %30 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %29)
  store i32 0, i32* %2, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %33 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
