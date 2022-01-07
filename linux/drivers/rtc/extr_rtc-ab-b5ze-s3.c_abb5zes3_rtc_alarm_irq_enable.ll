; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-b5ze-s3.c_abb5zes3_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab-b5ze-s3.c_abb5zes3_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abb5zes3_rtc_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @abb5zes3_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abb5zes3_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.abb5zes3_rtc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.abb5zes3_rtc_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.abb5zes3_rtc_data* %8, %struct.abb5zes3_rtc_data** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.abb5zes3_rtc_data*, %struct.abb5zes3_rtc_data** %5, align 8
  %10 = getelementptr inbounds %struct.abb5zes3_rtc_data, %struct.abb5zes3_rtc_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.abb5zes3_rtc_data*, %struct.abb5zes3_rtc_data** %5, align 8
  %15 = getelementptr inbounds %struct.abb5zes3_rtc_data, %struct.abb5zes3_rtc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_abb5zes3_rtc_update_timer(%struct.device* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @_abb5zes3_rtc_update_alarm(%struct.device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.abb5zes3_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @_abb5zes3_rtc_update_timer(%struct.device*, i32) #1

declare dso_local i32 @_abb5zes3_rtc_update_alarm(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
