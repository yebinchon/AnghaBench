; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionA2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionA2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32, i64*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32)* }

@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @halbtc8723b2ant_ActionA2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionA2dp(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = call i32 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_17__* %8, i32 0, i32 2, i32 15, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = call i32 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_17__* %10, i32 1, i32 2, i32 40, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @halbtc8723b2ant_BtRssiState(i32 2, i32 29, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_17__*, i32, i64*)*, i32 (%struct.TYPE_17__*, i32, i64*)** %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %18 = bitcast i32* %7 to i64*
  %19 = call i32 %15(%struct.TYPE_17__* %16, i32 %17, i64* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 10
  br i1 %21, label %22, label %68

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @BTC_RSSI_HIGH(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = load i32, i32* @BTC_RF_A, align 4
  %32 = call i32 %29(%struct.TYPE_17__* %30, i32 %31, i32 1, i32 1048575, i32 0)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = load i32, i32* @NORMAL_EXEC, align 4
  %35 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_17__* %33, i32 %34, i32 0, i32 0, i32 8)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = load i32, i32* @NORMAL_EXEC, align 4
  %38 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_17__* %36, i32 %37, i32 6)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_17__* %39, i32 %40, i32 0)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_17__* %42, i32 %43, i32 0)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_17__* %45, i32 %46, i32 0, i32 1)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_17__*, i32, i64*)*, i32 (%struct.TYPE_17__*, i32, i64*)** %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %53 = call i32 %50(%struct.TYPE_17__* %51, i32 %52, i64* %6)
  %54 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %26
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__* %58, i32 1, i32 0, i32 0, i32 0)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__* %60, i32 1, i32 0, i32 1, i32 24)
  br label %67

62:                                               ; preds = %26
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__* %63, i32 0, i32 0, i32 0, i32 0)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__* %65, i32 1, i32 0, i32 1, i32 24)
  br label %67

67:                                               ; preds = %62, %57
  br label %157

68:                                               ; preds = %22, %1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32)** %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = load i32, i32* @BTC_RF_A, align 4
  %74 = call i32 %71(%struct.TYPE_17__* %72, i32 %73, i32 1, i32 1048575, i32 0)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %76 = load i32, i32* @NORMAL_EXEC, align 4
  %77 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_17__* %75, i32 %76, i32 0, i32 0, i32 8)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = load i32, i32* @NORMAL_EXEC, align 4
  %80 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_17__* %78, i32 %79, i32 6)
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @BTC_RSSI_HIGH(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = load i32, i32* @NORMAL_EXEC, align 4
  %87 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_17__* %85, i32 %86, i32 2)
  br label %92

88:                                               ; preds = %68
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = load i32, i32* @NORMAL_EXEC, align 4
  %91 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_17__* %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %94 = load i32, i32* @NORMAL_EXEC, align 4
  %95 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_17__* %93, i32 %94, i32 7)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %92
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_17__* %104, i32 0, i32 0, i32 1)
  br label %109

106:                                              ; preds = %99
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %108 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_17__* %107, i32 0, i32 1, i32 1)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_17__*, i32, i64*)*, i32 (%struct.TYPE_17__*, i32, i64*)** %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %115 = call i32 %112(%struct.TYPE_17__* %113, i32 %114, i64* %6)
  %116 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %109
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123, %119
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %129 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__* %128, i32 1, i32 0, i32 0, i32 0)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__* %130, i32 1, i32 0, i32 0, i32 24)
  br label %137

132:                                              ; preds = %123
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %134 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__* %133, i32 1, i32 0, i32 0, i32 0)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %136 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__* %135, i32 0, i32 0, i32 0, i32 24)
  br label %137

137:                                              ; preds = %132, %127
  br label %157

138:                                              ; preds = %109
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142, %138
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %148 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__* %147, i32 0, i32 0, i32 0, i32 0)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %150 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__* %149, i32 1, i32 0, i32 0, i32 24)
  br label %156

151:                                              ; preds = %142
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %153 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__* %152, i32 0, i32 0, i32 0, i32 0)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %155 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__* %154, i32 0, i32 0, i32 0, i32 24)
  br label %156

156:                                              ; preds = %151, %146
  br label %157

157:                                              ; preds = %67, %156, %137
  ret void
}

declare dso_local i32 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_BtRssiState(i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_PsTdma(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_17__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
