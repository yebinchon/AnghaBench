; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson-vrtc.c_meson_vrtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson-vrtc.c_meson_vrtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_vrtc_data = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_vrtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_vrtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_vrtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_vrtc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.meson_vrtc_data* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.meson_vrtc_data* %9, %struct.meson_vrtc_data** %4, align 8
  %10 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %11 = icmp ne %struct.meson_vrtc_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call %struct.TYPE_6__* @devm_platform_ioremap_resource(%struct.platform_device* %16, i32 0)
  %18 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %19 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %18, i32 0, i32 1
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %21 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i64 @IS_ERR(%struct.TYPE_6__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %27 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @PTR_ERR(%struct.TYPE_6__* %28)
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %15
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @device_init_wakeup(i32* %32, i32 1)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.meson_vrtc_data* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %38)
  %40 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %41 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %40, i32 0, i32 0
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %43 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i64 @IS_ERR(%struct.TYPE_6__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %49 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.TYPE_6__* %50)
  store i32 %51, i32* %2, align 4
  br label %66

52:                                               ; preds = %30
  %53 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %54 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32* @meson_vrtc_ops, i32** %56, align 8
  %57 = load %struct.meson_vrtc_data*, %struct.meson_vrtc_data** %4, align 8
  %58 = getelementptr inbounds %struct.meson_vrtc_data, %struct.meson_vrtc_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @rtc_register_device(%struct.TYPE_6__* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %47, %25, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.meson_vrtc_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_vrtc_data*) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
