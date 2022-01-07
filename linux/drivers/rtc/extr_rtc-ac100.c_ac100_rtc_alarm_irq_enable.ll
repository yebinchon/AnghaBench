; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ac100_rtc_dev = type { %struct.regmap* }
%struct.regmap = type { i32 }

@AC100_ALM_INT_ENABLE = common dso_local global i32 0, align 4
@AC100_ALM_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ac100_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ac100_rtc_dev*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ac100_rtc_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.ac100_rtc_dev* %9, %struct.ac100_rtc_dev** %5, align 8
  %10 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %11 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AC100_ALM_INT_ENABLE, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = load i32, i32* @AC100_ALM_INT_ENA, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @regmap_write(%struct.regmap* %20, i32 %21, i32 %22)
  ret i32 %23
}

declare dso_local %struct.ac100_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
