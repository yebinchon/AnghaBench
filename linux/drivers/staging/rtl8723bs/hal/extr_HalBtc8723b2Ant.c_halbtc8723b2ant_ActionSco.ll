; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionSco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionSco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i64*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }

@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @halbtc8723b2ant_ActionSco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionSco(%struct.TYPE_13__* %0) #0 {
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
  %20 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_13__* %18, i32 %19, i32 4)
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
  %39 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_13__* %43, i32 %44, i32 2)
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_13__* %47, i32 %48, i32 8)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_13__* %51, i32 %52, i32 0, i32 0)
  %54 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %66, i32 1, i32 1, i32 0, i32 0)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %69 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %68, i32 1, i32 0, i32 1, i32 4)
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %71, i32 1, i32 1, i32 0, i32 0)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %73, i32 0, i32 0, i32 1, i32 4)
  br label %75

75:                                               ; preds = %70, %65
  br label %95

76:                                               ; preds = %50
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %85, i32 0, i32 1, i32 0, i32 0)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %87, i32 1, i32 0, i32 1, i32 4)
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_13__* %90, i32 0, i32 1, i32 0, i32 0)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_13__* %92, i32 0, i32 0, i32 1, i32 4)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %75
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
