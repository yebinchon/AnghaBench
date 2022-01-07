; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_DMInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_DMInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64 }

@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@CG_TRX_SMART_ANTDIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_DMInit(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %3 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %4 = call i32 @odm_CommonInfoSelfInit(%struct.odm_dm_struct* %3)
  %5 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %6 = call i32 @odm_CmnInfoInit_Debug(%struct.odm_dm_struct* %5)
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = call i32 @odm_DIGInit(%struct.odm_dm_struct* %7)
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %10 = call i32 @odm_RateAdaptiveMaskInit(%struct.odm_dm_struct* %9)
  %11 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %12 = call i32 @odm_DynamicTxPowerInit(%struct.odm_dm_struct* %11)
  %13 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %14 = call i32 @odm_TXPowerTrackingInit(%struct.odm_dm_struct* %13)
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %16 = call i32 @ODM_EdcaTurboInit(%struct.odm_dm_struct* %15)
  %17 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %18 = call i32 @ODM_RAInfo_Init_all(%struct.odm_dm_struct* %17)
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %1
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %26 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %32 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CG_TRX_SMART_ANTDIV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %24, %1
  %37 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %38 = call i32 @odm_InitHybridAntDiv(%struct.odm_dm_struct* %37)
  br label %39

39:                                               ; preds = %36, %30
  ret void
}

declare dso_local i32 @odm_CommonInfoSelfInit(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_CmnInfoInit_Debug(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_DIGInit(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_RateAdaptiveMaskInit(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_DynamicTxPowerInit(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_TXPowerTrackingInit(%struct.odm_dm_struct*) #1

declare dso_local i32 @ODM_EdcaTurboInit(%struct.odm_dm_struct*) #1

declare dso_local i32 @ODM_RAInfo_Init_all(%struct.odm_dm_struct*) #1

declare dso_local i32 @odm_InitHybridAntDiv(%struct.odm_dm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
