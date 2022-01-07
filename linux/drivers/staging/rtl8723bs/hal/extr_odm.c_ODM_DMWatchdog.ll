; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_DMWatchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_DMWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, %struct.TYPE_22__, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"odm_DIG(): RSSI = 0x%x\0A\00", align 1
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"----Step1: odm_DIG is in LPS mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"---Step2: 8723AS is in LPS mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_DMWatchdog(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %4 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %5 = call i32 @odm_CommonInfoSelfUpdate(%struct.TYPE_24__* %4)
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %7 = call i32 @odm_BasicDbgMessage(%struct.TYPE_24__* %6)
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = call i32 @odm_FalseAlarmCounterStatistics(%struct.TYPE_24__* %8)
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %11 = call i32 @odm_NHMCounterStatistics(%struct.TYPE_24__* %10)
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %13 = load i32, i32* @ODM_COMP_DIG, align 4
  %14 = load i32, i32* @ODM_DBG_LOUD, align 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @ODM_RT_TRACE(%struct.TYPE_24__* %12, i32 %13, i32 %14, i8* %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %22 = call i32 @odm_RSSIMonitorCheck(%struct.TYPE_24__* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_21__* @adapter_to_pwrctl(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %33 = load i32, i32* @ODM_COMP_DIG, align 4
  %34 = load i32, i32* @ODM_DBG_LOUD, align 4
  %35 = call i32 @ODM_RT_TRACE(%struct.TYPE_24__* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %37 = load i32, i32* @ODM_COMP_DIG, align 4
  %38 = load i32, i32* @ODM_DBG_LOUD, align 4
  %39 = call i32 @ODM_RT_TRACE(%struct.TYPE_24__* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %41 = call i32 @odm_DIGbyRSSI_LPS(%struct.TYPE_24__* %40)
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %44 = call i32 @odm_DIG(%struct.TYPE_24__* %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %3, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @odm_Adaptivity(%struct.TYPE_24__* %48, i32 %51)
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %54 = call i32 @odm_CCKPacketDetectionThresh(%struct.TYPE_24__* %53)
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  br label %75

61:                                               ; preds = %45
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %63 = call i32 @odm_RefreshRateAdaptiveMask(%struct.TYPE_24__* %62)
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %65 = call i32 @odm_EdcaTurboCheck(%struct.TYPE_24__* %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %67 = call i32 @odm_PathDiversity(%struct.TYPE_24__* %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %69 = call i32 @ODM_CfoTracking(%struct.TYPE_24__* %68)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %71 = call i32 @ODM_TXPowerTrackingCheck(%struct.TYPE_24__* %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %61, %60
  ret void
}

declare dso_local i32 @odm_CommonInfoSelfUpdate(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_BasicDbgMessage(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_FalseAlarmCounterStatistics(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_NHMCounterStatistics(%struct.TYPE_24__*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_24__*, i32, i32, i8*) #1

declare dso_local i32 @odm_RSSIMonitorCheck(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_21__* @adapter_to_pwrctl(i32) #1

declare dso_local i32 @odm_DIGbyRSSI_LPS(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_DIG(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_Adaptivity(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @odm_CCKPacketDetectionThresh(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_RefreshRateAdaptiveMask(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_EdcaTurboCheck(%struct.TYPE_24__*) #1

declare dso_local i32 @odm_PathDiversity(%struct.TYPE_24__*) #1

declare dso_local i32 @ODM_CfoTracking(%struct.TYPE_24__*) #1

declare dso_local i32 @ODM_TXPowerTrackingCheck(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
