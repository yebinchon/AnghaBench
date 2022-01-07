; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_DMInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_DMInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_DMInit(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %3 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %4 = call i32 @odm_CommonInfoSelfInit(%struct.TYPE_18__* %3)
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %6 = call i32 @odm_CmnInfoInit_Debug(%struct.TYPE_18__* %5)
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = call i32 @odm_DIGInit(%struct.TYPE_18__* %7)
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = call i32 @odm_NHMCounterStatisticsInit(%struct.TYPE_18__* %9)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = call i32 @odm_AdaptivityInit(%struct.TYPE_18__* %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = call i32 @odm_RateAdaptiveMaskInit(%struct.TYPE_18__* %13)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = call i32 @ODM_CfoTrackingInit(%struct.TYPE_18__* %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = call i32 @ODM_EdcaTurboInit(%struct.TYPE_18__* %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = call i32 @odm_RSSIMonitorInit(%struct.TYPE_18__* %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = call i32 @odm_TXPowerTrackingInit(%struct.TYPE_18__* %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = call i32 @ODM_ClearTxPowerTrackingState(%struct.TYPE_18__* %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = call i32 @odm_PathDiversityInit(%struct.TYPE_18__* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = call i32 @odm_DynamicBBPowerSavingInit(%struct.TYPE_18__* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = call i32 @odm_DynamicTxPowerInit(%struct.TYPE_18__* %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = call i32 @odm_SwAntDetectInit(%struct.TYPE_18__* %38)
  ret void
}

declare dso_local i32 @odm_CommonInfoSelfInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_CmnInfoInit_Debug(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_DIGInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_NHMCounterStatisticsInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_AdaptivityInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_RateAdaptiveMaskInit(%struct.TYPE_18__*) #1

declare dso_local i32 @ODM_CfoTrackingInit(%struct.TYPE_18__*) #1

declare dso_local i32 @ODM_EdcaTurboInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_RSSIMonitorInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_TXPowerTrackingInit(%struct.TYPE_18__*) #1

declare dso_local i32 @ODM_ClearTxPowerTrackingState(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_PathDiversityInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_DynamicBBPowerSavingInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_DynamicTxPowerInit(%struct.TYPE_18__*) #1

declare dso_local i32 @odm_SwAntDetectInit(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
