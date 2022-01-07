; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_power_reset_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_power_reset_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64, i32 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Start Reset Recovery ==>\0A\00", align 1
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@dm_tx_bb_gain = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Reset Recovery: Fill in 0xc80 is %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Reset Recovery: Fill in RFA_txPowerTrackingIndex is %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Reset Recovery : RF A I/Q Amplify Gain is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Reset Recovery: CCK Attenuation is %d dB\0A\00", align 1
@rOFDM0_XCTxIQImbalance = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Reset Recovery: Fill in 0xc90 is %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Reset Recovery: Fill in RFC_txPowerTrackingIndex is %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Reset Recovery : RF C I/Q Amplify Gain is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_tx_power_reset_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_tx_power_reset_recovery(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %7 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %10 = load i32, i32* @bMaskDWord, align 4
  %11 = load i64*, i64** @dm_tx_bb_gain, align 8
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %8, i32 %9, i32 %10, i64 %16)
  %18 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %19 = load i64*, i64** @dm_tx_bb_gain, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @dm_tx_bb_gain_idx_to_amplify(i64 %34)
  %36 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device* %42, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load i32, i32* @rOFDM0_XCTxIQImbalance, align 4
  %49 = load i32, i32* @bMaskDWord, align 4
  %50 = load i64*, i64** @dm_tx_bb_gain, align 8
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %47, i32 %48, i32 %49, i64 %55)
  %57 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %58 = load i64*, i64** @dm_tx_bb_gain, align 8
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @dm_tx_bb_gain_idx_to_amplify(i64 %73)
  %75 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %74)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i64) #1

declare dso_local i64 @dm_tx_bb_gain_idx_to_amplify(i64) #1

declare dso_local i32 @rtl92e_dm_cck_txpower_adjust(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
