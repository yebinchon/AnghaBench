; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_plat_data = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ds1553_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1553_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_plat_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.rtc_plat_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.rtc_plat_data* %8, %struct.rtc_plat_data** %6, align 8
  %9 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %10 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @RTC_AF, align 4
  %21 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %22 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* @RTC_AF, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %29 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %19
  %33 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %6, align 8
  %34 = call i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.rtc_plat_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
