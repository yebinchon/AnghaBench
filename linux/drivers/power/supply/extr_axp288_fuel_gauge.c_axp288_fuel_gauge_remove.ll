; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_axp288_fuel_gauge_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_axp288_fuel_gauge_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.axp288_fg_info = type { i64*, i32*, i32 }

@AXP288_FG_INTR_NUM = common dso_local global i32 0, align 4
@IIO_CHANNEL_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp288_fuel_gauge_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_fuel_gauge_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.axp288_fg_info*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.axp288_fg_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.axp288_fg_info* %6, %struct.axp288_fg_info** %3, align 8
  %7 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %3, align 8
  %8 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @power_supply_unregister(i32 %9)
  %11 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %3, align 8
  %12 = call i32 @fuel_gauge_remove_debugfs(%struct.axp288_fg_info* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AXP288_FG_INTR_NUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %3, align 8
  %19 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %3, align 8
  %28 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %3, align 8
  %35 = call i32 @free_irq(i64 %33, %struct.axp288_fg_info* %34)
  br label %36

36:                                               ; preds = %26, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @IIO_CHANNEL_NUM, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %3, align 8
  %47 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @iio_channel_release(i32 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %41

57:                                               ; preds = %41
  ret i32 0
}

declare dso_local %struct.axp288_fg_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @fuel_gauge_remove_debugfs(%struct.axp288_fg_info*) #1

declare dso_local i32 @free_irq(i64, %struct.axp288_fg_info*) #1

declare dso_local i32 @iio_channel_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
