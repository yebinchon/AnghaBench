; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_pdrv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_pdrv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.soc_camera_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@device_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soc_camera_pdrv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_pdrv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.soc_camera_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.soc_camera_device* %7, %struct.soc_camera_device** %4, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %9 = icmp ne %struct.soc_camera_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @device_map, align 4
  %23 = call i64 @test_bit(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @device_map, align 4
  %28 = call i32 @clear_bit(i32 %26, i32 %27)
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 0
  %31 = call i32 @list_del(i32* %30)
  br label %32

32:                                               ; preds = %25, %20
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.soc_camera_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
