; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_clk*)* @soc_camera_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_clk_enable(%struct.v4l2_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_clk*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.soc_camera_host*, align 8
  store %struct.v4l2_clk* %0, %struct.v4l2_clk** %3, align 8
  %6 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %6, i32 0, i32 0
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  store %struct.soc_camera_device* %8, %struct.soc_camera_device** %4, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %10 = icmp ne %struct.soc_camera_device* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %11
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %22)
  store %struct.soc_camera_host* %23, %struct.soc_camera_host** %5, align 8
  %24 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %25 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @try_module_get(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %36 = call i32 @soc_camera_clock_start(%struct.soc_camera_host* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %31, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @soc_camera_clock_start(%struct.soc_camera_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
