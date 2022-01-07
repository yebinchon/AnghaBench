; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionPanEdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionPanEdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i64*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }

@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @halbtc8723b2ant_ActionPanEdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionPanEdr(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = call i64 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_13__* %6, i32 0, i32 2, i32 15, i32 0)
  store i64 %7, i64* %3, align 8
  %8 = call i64 @halbtc8723b2ant_BtRssiState(i32 2, i32 29, i32 0)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %10, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = load i32, i32* @BTC_RF_A, align 4
  %14 = call i32 %11(%struct.TYPE_13__* %12, i32 %13, i32 1, i32 1048575, i32 0)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = load i32, i32* @NORMAL_EXEC, align 4
  %17 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_13__* %15, i32 %16, i32 0, i32 0, i32 8)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = load i32, i32* @NORMAL_EXEC, align 4
  %20 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_13__* %18, i32 %19, i32 6)
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @BTC_RSSI_HIGH(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load i32, i32* @NORMAL_EXEC, align 4
  %27 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_13__* %25, i32 %26, i32 2)
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = load i32, i32* @NORMAL_EXEC, align 4
  %31 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_13__* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = load i32, i32* @NORMAL_EXEC, align 4
  %35 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_13__* %33, i32 %34, i32 10)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %32
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load i32, i32* @NORMAL_EXEC, align 4
  %46 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_13__* %44, i32 %45, i32 1, i32 1)
  br label %51

47:                                               ; preds = %39
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_13__* %48, i32 %49, i32 1, i32 5)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_13__*, i32, i64*)*, i32 (%struct.TYPE_13__*, i32, i64*)** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %57 = call i32 %54(%struct.TYPE_13__* %55, i32 %56, i64* %5)
  %58 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %51
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %70, i32 1, i32 0, i32 0, i32 0)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %72, i32 1, i32 0, i32 0, i32 24)
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %75, i32 1, i32 0, i32 0, i32 0)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %77, i32 0, i32 0, i32 0, i32 24)
  br label %79

79:                                               ; preds = %74, %69
  br label %99

80:                                               ; preds = %51
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %80
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %89, i32 0, i32 0, i32 0, i32 0)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %91, i32 1, i32 0, i32 0, i32 24)
  br label %98

93:                                               ; preds = %84
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %94, i32 0, i32 0, i32 0, i32 0)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %96, i32 0, i32 0, i32 0, i32 24)
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %79
  ret void
}

declare dso_local i64 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i64 @halbtc8723b2ant_BtRssiState(i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
