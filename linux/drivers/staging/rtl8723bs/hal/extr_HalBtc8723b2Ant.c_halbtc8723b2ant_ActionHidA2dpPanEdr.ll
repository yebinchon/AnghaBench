; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionHidA2dpPanEdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionHidA2dpPanEdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i64*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }

@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @halbtc8723b2ant_ActionHidA2dpPanEdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionHidA2dpPanEdr(%struct.TYPE_13__* %0) #0 {
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
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_13__*, i32, i64*)*, i32 (%struct.TYPE_13__*, i32, i64*)** %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %38 = call i32 %35(%struct.TYPE_13__* %36, i32 %37, i64* %5)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_13__* %39, i32 %40, i32 7)
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %32
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45, %32
  %50 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_13__* %54, i32 1, i32 1, i32 2)
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_13__* %57, i32 1, i32 0, i32 3)
  br label %59

59:                                               ; preds = %56, %53
  br label %63

60:                                               ; preds = %45
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_13__* %61, i32 1, i32 1, i32 3)
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %67
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %77 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %76, i32 1, i32 1, i32 0, i32 0)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %78, i32 1, i32 0, i32 0, i32 24)
  br label %85

80:                                               ; preds = %71
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %81, i32 1, i32 1, i32 0, i32 0)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %83, i32 0, i32 0, i32 0, i32 24)
  br label %85

85:                                               ; preds = %80, %75
  br label %105

86:                                               ; preds = %63
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90, %86
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %95, i32 0, i32 1, i32 0, i32 0)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %97, i32 1, i32 0, i32 0, i32 24)
  br label %104

99:                                               ; preds = %90
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %100, i32 0, i32 1, i32 0, i32 0)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %102, i32 0, i32 0, i32 0, i32 24)
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %85
  ret void
}

declare dso_local i64 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i64 @halbtc8723b2ant_BtRssiState(i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
