; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_dyn_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_dyn_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_desc = type { i32 }
%struct.soc_camera_async_client = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@list_lock = common dso_local global i32 0, align 4
@device_map = common dso_local global i32 0, align 4
@MAP_MAX_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"soc-camera-pdrv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_desc*, %struct.soc_camera_async_client*)* @soc_camera_dyn_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_dyn_pdev(%struct.soc_camera_desc* %0, %struct.soc_camera_async_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_desc*, align 8
  %5 = alloca %struct.soc_camera_async_client*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.soc_camera_desc* %0, %struct.soc_camera_desc** %4, align 8
  store %struct.soc_camera_async_client* %1, %struct.soc_camera_async_client** %5, align 8
  %9 = call i32 @mutex_lock(i32* @list_lock)
  %10 = load i32, i32* @device_map, align 4
  %11 = load i32, i32* @MAP_MAX_NUM, align 4
  %12 = call i32 @find_first_zero_bit(i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MAP_MAX_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @device_map, align 4
  %19 = call i32 @set_bit(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = call i32 @mutex_unlock(i32* @list_lock)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MAP_MAX_NUM, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29)
  store %struct.platform_device* %30, %struct.platform_device** %6, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = icmp ne %struct.platform_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %4, align 8
  %39 = call i32 @platform_device_add_data(%struct.platform_device* %37, %struct.soc_camera_desc* %38, i32 4)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %44 = call i32 @platform_device_put(%struct.platform_device* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %48 = load %struct.soc_camera_async_client*, %struct.soc_camera_async_client** %5, align 8
  %49 = getelementptr inbounds %struct.soc_camera_async_client, %struct.soc_camera_async_client* %48, i32 0, i32 0
  store %struct.platform_device* %47, %struct.platform_device** %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %42, %33, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.soc_camera_desc*, i32) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
