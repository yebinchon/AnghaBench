; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mxc_v2.c_mxc_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mxc_v2.c_mxc_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.mxc_rtc_data = type { i64 }

@SRTC_LPSAR = common dso_local global i64 0, align 8
@SRTC_LPSR_ALP = common dso_local global i32 0, align 4
@SRTC_LPSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mxc_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mxc_rtc_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  %11 = call i64 @rtc_tm_to_time64(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.mxc_rtc_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.mxc_rtc_data* %13, %struct.mxc_rtc_data** %7, align 8
  %14 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %15 = call i32 @mxc_rtc_lock(%struct.mxc_rtc_data* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %24 = getelementptr inbounds %struct.mxc_rtc_data, %struct.mxc_rtc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SRTC_LPSAR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load i32, i32* @SRTC_LPSR_ALP, align 4
  %30 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %31 = getelementptr inbounds %struct.mxc_rtc_data, %struct.mxc_rtc_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SRTC_LPSR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %38 = getelementptr inbounds %struct.mxc_rtc_data, %struct.mxc_rtc_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mxc_rtc_sync_lp_locked(%struct.device* %36, i64 %39)
  %41 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mxc_rtc_alarm_irq_enable_locked(%struct.mxc_rtc_data* %41, i32 %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %48 = getelementptr inbounds %struct.mxc_rtc_data, %struct.mxc_rtc_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @mxc_rtc_sync_lp_locked(%struct.device* %46, i64 %49)
  %51 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %7, align 8
  %52 = call i32 @mxc_rtc_unlock(%struct.mxc_rtc_data* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %20, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local %struct.mxc_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mxc_rtc_lock(%struct.mxc_rtc_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mxc_rtc_sync_lp_locked(%struct.device*, i64) #1

declare dso_local i32 @mxc_rtc_alarm_irq_enable_locked(%struct.mxc_rtc_data*, i32) #1

declare dso_local i32 @mxc_rtc_unlock(%struct.mxc_rtc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
