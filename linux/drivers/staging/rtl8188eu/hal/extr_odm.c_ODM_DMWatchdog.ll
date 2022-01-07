; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_DMWatchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_DMWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64, i64* }

@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@CG_TRX_SMART_ANTDIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_DMWatchdog(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %3 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %4 = call i32 @odm_CmnInfoHook_Debug(%struct.odm_dm_struct* %3)
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = call i32 @odm_CmnInfoUpdate_Debug(%struct.odm_dm_struct* %5)
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = call i32 @odm_CommonInfoSelfUpdate(%struct.odm_dm_struct* %7)
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %10 = call i32 @odm_FalseAlarmCounterStatistics(%struct.odm_dm_struct* %9)
  %11 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %12 = call i32 @odm_RSSIMonitorCheck(%struct.odm_dm_struct* %11)
  %13 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %14 = call i32 @odm_DIG(%struct.odm_dm_struct* %13)
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %16 = call i32 @odm_CCKPacketDetectionThresh(%struct.odm_dm_struct* %15)
  %17 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %18 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %25 = call i32 @odm_RefreshRateAdaptiveMask(%struct.odm_dm_struct* %24)
  %26 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %27 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %33 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %39 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CG_TRX_SMART_ANTDIV, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31, %23
  %44 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %45 = call i32 @odm_HwAntDiv(%struct.odm_dm_struct* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %48 = call i32 @ODM_TXPowerTrackingCheck(%struct.odm_dm_struct* %47)
  %49 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %50 = call i32 @odm_EdcaTurboCheck(%struct.odm_dm_struct* %49)
  br label %51

51:                                               ; preds = %46, %22
  ret void
}

declare dso_local i32 @odm_CmnInfoHook_Debug(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_CmnInfoUpdate_Debug(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_CommonInfoSelfUpdate(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_FalseAlarmCounterStatistics(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_RSSIMonitorCheck(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_DIG(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_CCKPacketDetectionThresh(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_RefreshRateAdaptiveMask(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_HwAntDiv(%struct.odm_dm_struct*) #1

declare dso_local i32 @ODM_TXPowerTrackingCheck(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_EdcaTurboCheck(%struct.odm_dm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
