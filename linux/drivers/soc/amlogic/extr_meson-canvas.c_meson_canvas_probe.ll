; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-canvas.c_meson_canvas_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.meson_canvas = type { i32, %struct.device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_canvas_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_canvas_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.meson_canvas*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.meson_canvas* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.meson_canvas* %11, %struct.meson_canvas** %5, align 8
  %12 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %13 = icmp ne %struct.meson_canvas* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %4, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = call i32 @devm_ioremap_resource(%struct.device* %21, %struct.resource* %22)
  %24 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %25 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %27 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %33 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @of_device_get_match_data(%struct.device* %37)
  %39 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %40 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %43 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %42, i32 0, i32 1
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %45 = getelementptr inbounds %struct.meson_canvas, %struct.meson_canvas* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.meson_canvas*, %struct.meson_canvas** %5, align 8
  %49 = call i32 @dev_set_drvdata(%struct.device* %47, %struct.meson_canvas* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %36, %31, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.meson_canvas* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.meson_canvas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
