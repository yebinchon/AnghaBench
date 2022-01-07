; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-ap806.c_armada_ap806_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-ap806.c_armada_ap806_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_soc_info = type { i32, i32, i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.mvebu_pinctrl_soc_info* }
%struct.of_device_id = type { i32 }

@armada_ap806_pinctrl_info = common dso_local global %struct.mvebu_pinctrl_soc_info zeroinitializer, align 8
@armada_ap806_pinctrl_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@armada_ap806_mpp_controls = common dso_local global %struct.TYPE_6__* null, align 8
@armada_ap806_mpp_gpio_ranges = common dso_local global %struct.TYPE_6__* null, align 8
@armada_ap806_mpp_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_ap806_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_ap806_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mvebu_pinctrl_soc_info*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.mvebu_pinctrl_soc_info* @armada_ap806_pinctrl_info, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %6 = load i32, i32* @armada_ap806_pinctrl_of_match, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.of_device_id* @of_match_device(i32 %6, %struct.TYPE_5__* %8)
  store %struct.of_device_id* %9, %struct.of_device_id** %5, align 8
  %10 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %11 = icmp ne %struct.of_device_id* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %12
  %22 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %23 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_ap806_mpp_controls, align 8
  %25 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %26 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %25, i32 0, i32 5
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_ap806_mpp_controls, align 8
  %28 = call i8* @ARRAY_SIZE(%struct.TYPE_6__* %27)
  %29 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %30 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_ap806_mpp_gpio_ranges, align 8
  %32 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %33 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %32, i32 0, i32 3
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_ap806_mpp_gpio_ranges, align 8
  %35 = call i8* @ARRAY_SIZE(%struct.TYPE_6__* %34)
  %36 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %37 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @armada_ap806_mpp_modes, align 4
  %39 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %40 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @armada_ap806_mpp_controls, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %46 = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, %struct.mvebu_pinctrl_soc_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mvebu_pinctrl_soc_info*, %struct.mvebu_pinctrl_soc_info** %4, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store %struct.mvebu_pinctrl_soc_info* %47, %struct.mvebu_pinctrl_soc_info** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mvebu_pinctrl_simple_regmap_probe(%struct.platform_device* %51, i32 %55, i32 0)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %21, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @mvebu_pinctrl_simple_regmap_probe(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
