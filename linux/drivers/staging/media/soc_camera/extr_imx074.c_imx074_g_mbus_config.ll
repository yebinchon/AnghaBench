; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_g_mbus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_g_mbus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_config = type { i32, i32 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_2_LANE = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_CHANNEL_0 = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_CONTINUOUS_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_config*)* @imx074_g_mbus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx074_g_mbus_config(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_config*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %4, align 8
  %5 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  %6 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @V4L2_MBUS_CSI2_2_LANE, align 4
  %9 = load i32, i32* @V4L2_MBUS_CSI2_CHANNEL_0, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @V4L2_MBUS_CSI2_CONTINUOUS_CLOCK, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
