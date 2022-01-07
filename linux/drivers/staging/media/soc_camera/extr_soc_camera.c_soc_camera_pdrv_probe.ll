; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_pdrv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_pdrv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.soc_camera_desc* }
%struct.soc_camera_desc = type { %struct.TYPE_6__, %struct.soc_camera_subdev_desc }
%struct.TYPE_6__ = type { i32 }
%struct.soc_camera_subdev_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.soc_camera_device = type { i32, i32, %struct.TYPE_7__*, %struct.soc_camera_desc*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_WIDTH = common dso_local global i32 0, align 4
@DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soc_camera_pdrv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_pdrv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_camera_desc*, align 8
  %5 = alloca %struct.soc_camera_subdev_desc*, align 8
  %6 = alloca %struct.soc_camera_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %10, align 8
  store %struct.soc_camera_desc* %11, %struct.soc_camera_desc** %4, align 8
  %12 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %4, align 8
  %13 = getelementptr inbounds %struct.soc_camera_desc, %struct.soc_camera_desc* %12, i32 0, i32 1
  store %struct.soc_camera_subdev_desc* %13, %struct.soc_camera_subdev_desc** %5, align 8
  %14 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %4, align 8
  %15 = icmp ne %struct.soc_camera_desc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.soc_camera_device* @devm_kzalloc(%struct.TYPE_7__* %21, i32 32, i32 %22)
  store %struct.soc_camera_device* %23, %struct.soc_camera_device** %6, align 8
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %25 = icmp ne %struct.soc_camera_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %70

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %5, align 8
  %33 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %5, align 8
  %37 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @devm_regulator_bulk_get(%struct.TYPE_7__* %31, i32 %35, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %70

45:                                               ; preds = %29
  %46 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %4, align 8
  %47 = getelementptr inbounds %struct.soc_camera_desc, %struct.soc_camera_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %51 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.soc_camera_desc*, %struct.soc_camera_desc** %4, align 8
  %53 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %54 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %53, i32 0, i32 3
  store %struct.soc_camera_desc* %52, %struct.soc_camera_desc** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %58 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %57, i32 0, i32 2
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.soc_camera_device* %60)
  %62 = load i32, i32* @DEFAULT_WIDTH, align 4
  %63 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %64 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @DEFAULT_HEIGHT, align 4
  %66 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %67 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %69 = call i32 @soc_camera_device_register(%struct.soc_camera_device* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %45, %43, %26, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.soc_camera_device* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_device_register(%struct.soc_camera_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
