; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.snvs_rtc_data = type { i64, i32 }

@SNVS_LPCR = common dso_local global i64 0, align 8
@SNVS_LPCR_LPTA_EN = common dso_local global i32 0, align 4
@SNVS_LPTAR = common dso_local global i64 0, align 8
@SNVS_LPSR = common dso_local global i64 0, align 8
@SNVS_LPSR_LPTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @snvs_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.snvs_rtc_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.snvs_rtc_data* %10, %struct.snvs_rtc_data** %6, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = call i64 @rtc_tm_to_time64(i32* %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %15 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %18 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNVS_LPCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @SNVS_LPCR_LPTA_EN, align 4
  %23 = call i32 @regmap_update_bits(i32 %16, i64 %21, i32 %22, i32 0)
  %24 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %25 = call i32 @rtc_write_sync_lp(%struct.snvs_rtc_data* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %2
  %31 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %32 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %35 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SNVS_LPTAR, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @regmap_write(i32 %33, i64 %38, i64 %39)
  %41 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %42 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %45 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SNVS_LPSR, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @SNVS_LPSR_LPTA, align 8
  %50 = call i32 @regmap_write(i32 %43, i64 %48, i64 %49)
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snvs_rtc_alarm_irq_enable(%struct.device* %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %30, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @rtc_write_sync_lp(%struct.snvs_rtc_data*) #1

declare dso_local i32 @regmap_write(i32, i64, i64) #1

declare dso_local i32 @snvs_rtc_alarm_irq_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
