; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-39x.c_armada_39x_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-39x.c_armada_39x_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_soc_info = type { i32, i32, i32, i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mvebu_pinctrl_soc_info* }
%struct.of_device_id = type { i64 }

@armada_39x_pinctrl_info = common dso_local global %struct.mvebu_pinctrl_soc_info zeroinitializer, align 8
@armada_39x_pinctrl_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@armada_39x_mpp_controls = common dso_local global %struct.TYPE_6__* null, align 8
@armada_39x_mpp_gpio_ranges = common dso_local global %struct.TYPE_6__* null, align 8
@armada_39x_mpp_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_39x_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_39x_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_pinctrl_soc_info*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.mvebu_pinctrl_soc_info* @armada_39x_pinctrl_info, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %6 = load i32, i32* @armada_39x_pinctrl_of_match, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.of_device_id* @of_match_device(i32 %6, %struct.TYPE_5__* %8)
  store %struct.of_device_id* %9, %struct.of_device_id** %5, align 8
  %10 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %11 = icmp ne %struct.of_device_id* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 255
  %21 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %22 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_39x_mpp_controls, align 8
  %24 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %25 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %24, i32 0, i32 6
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_39x_mpp_controls, align 8
  %27 = call i8* @ARRAY_SIZE(%struct.TYPE_6__* %26)
  %28 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %29 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_39x_mpp_gpio_ranges, align 8
  %31 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %32 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %31, i32 0, i32 4
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_39x_mpp_gpio_ranges, align 8
  %34 = call i8* @ARRAY_SIZE(%struct.TYPE_6__* %33)
  %35 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %36 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @armada_39x_mpp_modes, align 4
  %38 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %39 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_39x_mpp_controls, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %45 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.mvebu_pinctrl_soc_info* %46, %struct.mvebu_pinctrl_soc_info** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @mvebu_pinctrl_simple_mmio_probe(%struct.platform_device* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %15, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @mvebu_pinctrl_simple_mmio_probe(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
