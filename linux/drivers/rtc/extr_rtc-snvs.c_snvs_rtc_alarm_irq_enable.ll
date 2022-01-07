; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snvs_rtc_data = type { i64, i32 }

@SNVS_LPCR = common dso_local global i64 0, align 8
@SNVS_LPCR_LPTA_EN = common dso_local global i32 0, align 4
@SNVS_LPCR_LPWUI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @snvs_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snvs_rtc_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.snvs_rtc_data* %7, %struct.snvs_rtc_data** %5, align 8
  %8 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %9 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %12 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNVS_LPCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @SNVS_LPCR_LPTA_EN, align 4
  %17 = load i32, i32* @SNVS_LPCR_LPWUI_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @SNVS_LPCR_LPTA_EN, align 4
  %23 = load i32, i32* @SNVS_LPCR_LPWUI_EN, align 4
  %24 = or i32 %22, %23
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  %28 = call i32 @regmap_update_bits(i32 %10, i64 %15, i32 %18, i32 %27)
  %29 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %5, align 8
  %30 = call i32 @rtc_write_sync_lp(%struct.snvs_rtc_data* %29)
  ret i32 %30
}

declare dso_local %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @rtc_write_sync_lp(%struct.snvs_rtc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
