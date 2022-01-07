; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c___prp_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c___prp_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.prp_priv = type { %struct.v4l2_mbus_framefmt, %struct.imx_ic_priv* }
%struct.imx_ic_priv = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_mbus_framefmt* (%struct.prp_priv*, %struct.v4l2_subdev_pad_config*, i32, i32)* @__prp_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.prp_priv*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.imx_ic_priv*, align 8
  store %struct.prp_priv* %0, %struct.prp_priv** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %12 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %11, i32 0, i32 1
  %13 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %12, align 8
  store %struct.imx_ic_priv* %13, %struct.imx_ic_priv** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %10, align 8
  %19 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %18, i32 0, i32 0
  %20 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %19, %struct.v4l2_subdev_pad_config* %20, i32 %21)
  store %struct.v4l2_mbus_framefmt* %22, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

23:                                               ; preds = %4
  %24 = load %struct.prp_priv*, %struct.prp_priv** %6, align 8
  %25 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %24, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  ret %struct.v4l2_mbus_framefmt* %27
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
