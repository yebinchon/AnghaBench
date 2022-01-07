; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00soc.c_rt2x00soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00soc.c_rt2x00soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rt2x00_ops = type { i32 }
%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32*, i32, i32, %struct.ieee80211_hw*, %struct.rt2x00_ops*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate hardware\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_SOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00soc_probe(%struct.platform_device* %0, %struct.rt2x00_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rt2x00_ops*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.rt2x00_ops* %1, %struct.rt2x00_ops** %5, align 8
  %9 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %10 = getelementptr inbounds %struct.rt2x00_ops, %struct.rt2x00_ops* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 40, i32 %11)
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = icmp ne %struct.ieee80211_hw* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.ieee80211_hw* %21)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %24, align 8
  store %struct.rt2x00_dev* %25, %struct.rt2x00_dev** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 5
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 4
  store %struct.rt2x00_ops* %30, %struct.rt2x00_ops** %32, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 3
  store %struct.ieee80211_hw* %33, %struct.ieee80211_hw** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32* @clk_get(%struct.TYPE_4__* %49, i32* null)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %54 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @IS_ERR(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %19
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %19
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %63 = load i32, i32* @RT2X00_CHIP_INTF_SOC, align 4
  %64 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %62, i32 %63)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %66 = call i32 @rt2x00soc_alloc_reg(%struct.rt2x00_dev* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %80

70:                                               ; preds = %61
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %72 = call i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %84

77:                                               ; preds = %75
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %79 = call i32 @rt2x00soc_free_reg(%struct.rt2x00_dev* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %82 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %76, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ieee80211_hw*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @clk_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00soc_alloc_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00soc_free_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
