; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.ftm_rtc = type { i64 }

@MAX_COUNT_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Out of alarm range {0~262} seconds.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@FTM_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ftm_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftm_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rtc_time, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ftm_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ftm_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.ftm_rtc* %12, %struct.ftm_rtc** %10, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @ftm_rtc_read_time(%struct.device* %13, %struct.rtc_time* %6)
  %15 = call i32 @rtc_tm_to_time(%struct.rtc_time* %6, i64* %7)
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 0
  %18 = call i32 @rtc_tm_to_time(%struct.rtc_time* %17, i64* %8)
  %19 = load %struct.ftm_rtc*, %struct.ftm_rtc** %10, align 8
  %20 = call i32 @ftm_clean_alarm(%struct.ftm_rtc* %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %21, %22
  %24 = load %struct.ftm_rtc*, %struct.ftm_rtc** %10, align 8
  %25 = getelementptr inbounds %struct.ftm_rtc, %struct.ftm_rtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %23, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @MAX_COUNT_VAL, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.ftm_rtc*, %struct.ftm_rtc** %10, align 8
  %37 = call i32 @ftm_irq_disable(%struct.ftm_rtc* %36)
  %38 = load %struct.ftm_rtc*, %struct.ftm_rtc** %10, align 8
  %39 = load i32, i32* @FTM_MOD, align 4
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %40, 1
  %42 = call i32 @rtc_writel(%struct.ftm_rtc* %38, i32 %39, i64 %41)
  %43 = load %struct.ftm_rtc*, %struct.ftm_rtc** %10, align 8
  %44 = call i32 @ftm_counter_enable(%struct.ftm_rtc* %43)
  %45 = load %struct.ftm_rtc*, %struct.ftm_rtc** %10, align 8
  %46 = call i32 @ftm_irq_enable(%struct.ftm_rtc* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %35, %31
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.ftm_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ftm_rtc_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @ftm_clean_alarm(%struct.ftm_rtc*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ftm_irq_disable(%struct.ftm_rtc*) #1

declare dso_local i32 @rtc_writel(%struct.ftm_rtc*, i32, i64) #1

declare dso_local i32 @ftm_counter_enable(%struct.ftm_rtc*) #1

declare dso_local i32 @ftm_irq_enable(%struct.ftm_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
