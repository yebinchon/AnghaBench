; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionPanEdrHid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionPanEdrHid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i64*)* }

@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @halbtc8723b2ant_ActionPanEdrHid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionPanEdrHid(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = call i64 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_15__* %6, i32 0, i32 2, i32 15, i32 0)
  store i64 %7, i64* %3, align 8
  %8 = call i64 @halbtc8723b2ant_BtRssiState(i32 2, i32 29, i32 0)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load i32 (%struct.TYPE_15__*, i32, i64*)*, i32 (%struct.TYPE_15__*, i32, i64*)** %10, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %14 = call i32 %11(%struct.TYPE_15__* %12, i32 %13, i64* %5)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = load i32, i32* @NORMAL_EXEC, align 4
  %17 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_15__* %15, i32 %16, i32 0, i32 0, i32 8)
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @BTC_RSSI_HIGH(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = load i32, i32* @NORMAL_EXEC, align 4
  %24 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_15__* %22, i32 %23, i32 2)
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = load i32, i32* @NORMAL_EXEC, align 4
  %28 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_15__* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_15__* %42, i32 %43, i32 3)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_15__* %45, i32 %46, i32 11)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = load i32, i32* @BTC_RF_A, align 4
  %53 = call i32 %50(%struct.TYPE_15__* %51, i32 %52, i32 1, i32 1048575, i32 1920)
  br label %67

54:                                               ; preds = %37
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_15__* %55, i32 %56, i32 6)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = load i32, i32* @NORMAL_EXEC, align 4
  %60 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_15__* %58, i32 %59, i32 7)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = load i32, i32* @BTC_RF_A, align 4
  %66 = call i32 %63(%struct.TYPE_15__* %64, i32 %65, i32 1, i32 1048575, i32 0)
  br label %67

67:                                               ; preds = %54, %41
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_15__* %68, i32 1, i32 0, i32 2)
  br label %85

70:                                               ; preds = %33
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = load i32, i32* @NORMAL_EXEC, align 4
  %73 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_15__* %71, i32 %72, i32 6)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %75 = load i32, i32* @NORMAL_EXEC, align 4
  %76 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_15__* %74, i32 %75, i32 11)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = load i32, i32* @BTC_RF_A, align 4
  %82 = call i32 %79(%struct.TYPE_15__* %80, i32 %81, i32 1, i32 1048575, i32 0)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_15__* %83, i32 1, i32 1, i32 2)
  br label %85

85:                                               ; preds = %70, %67
  %86 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %87 = load i64, i64* %5, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93, %89
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_15__* %98, i32 1, i32 1, i32 0, i32 0)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %101 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_15__* %100, i32 1, i32 0, i32 0, i32 24)
  br label %107

102:                                              ; preds = %93
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_15__* %103, i32 1, i32 1, i32 0, i32 0)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_15__* %105, i32 0, i32 0, i32 0, i32 24)
  br label %107

107:                                              ; preds = %102, %97
  br label %127

108:                                              ; preds = %85
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112, %108
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %118 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_15__* %117, i32 0, i32 1, i32 0, i32 0)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %120 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_15__* %119, i32 1, i32 0, i32 0, i32 24)
  br label %126

121:                                              ; preds = %112
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %123 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_15__* %122, i32 0, i32 1, i32 0, i32 0)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %125 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_15__* %124, i32 0, i32 0, i32 0, i32 24)
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %107
  ret void
}

declare dso_local i64 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i64 @halbtc8723b2ant_BtRssiState(i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_15__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
