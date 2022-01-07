; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionHidA2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_ActionHidA2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32)* }

@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @halbtc8723b2ant_ActionHidA2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_ActionHidA2dp(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_14__* %7, i32 0, i32 2, i32 15, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = call i32 @halbtc8723b2ant_BtRssiState(i32 3, i32 29, i32 37)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_14__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = load i32, i32* @BTC_RF_A, align 4
  %15 = call i32 %12(%struct.TYPE_14__* %13, i32 %14, i32 1, i32 1048575, i32 0)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = load i32, i32* @NORMAL_EXEC, align 4
  %18 = call i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_14__* %16, i32 %17, i32 0, i32 1, i32 5)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = load i32, i32* @NORMAL_EXEC, align 4
  %21 = call i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_14__* %19, i32 %20, i32 6)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %23, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %27 = bitcast i64* %5 to i32*
  %28 = call i32 %24(%struct.TYPE_14__* %25, i32 %26, i32* %27)
  %29 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @BTC_RSSI_HIGH(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = load i32, i32* @NORMAL_EXEC, align 4
  %39 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %37, i32 %38, i32 2)
  br label %53

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @BTC_RSSI_MEDIUM(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %45, i32 %46, i32 2)
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = load i32, i32* @NORMAL_EXEC, align 4
  %51 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %36
  br label %90

54:                                               ; preds = %1
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @BTC_RSSI_HIGH(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_14__*, i32, i32*)*, i32 (%struct.TYPE_14__*, i32, i32*)** %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %64 = call i32 %61(%struct.TYPE_14__* %62, i32 %63, i32* %6)
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = load i32, i32* @NORMAL_EXEC, align 4
  %70 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %68, i32 %69, i32 4)
  br label %75

71:                                               ; preds = %58
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = load i32, i32* @NORMAL_EXEC, align 4
  %74 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %72, i32 %73, i32 2)
  br label %75

75:                                               ; preds = %71, %67
  br label %89

76:                                               ; preds = %54
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @BTC_RSSI_MEDIUM(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = load i32, i32* @NORMAL_EXEC, align 4
  %83 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %81, i32 %82, i32 2)
  br label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = load i32, i32* @NORMAL_EXEC, align 4
  %87 = call i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__* %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %75
  br label %90

90:                                               ; preds = %89, %53
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_14__* %91, i32 %92, i32 7)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %90
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_14__* %102, i32 1, i32 0, i32 2)
  br label %107

104:                                              ; preds = %97
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = call i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_14__* %105, i32 1, i32 1, i32 2)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %111
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__* %120, i32 1, i32 1, i32 0, i32 0)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %123 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__* %122, i32 1, i32 0, i32 0, i32 24)
  br label %129

124:                                              ; preds = %115
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__* %125, i32 1, i32 1, i32 0, i32 0)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__* %127, i32 0, i32 0, i32 0, i32 24)
  br label %129

129:                                              ; preds = %124, %119
  br label %149

130:                                              ; preds = %107
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134, %130
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %140 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__* %139, i32 0, i32 1, i32 0, i32 0)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__* %141, i32 1, i32 0, i32 0, i32 24)
  br label %148

143:                                              ; preds = %134
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %145 = call i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__* %144, i32 0, i32 1, i32 0, i32 0)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %147 = call i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__* %146, i32 0, i32 0, i32 0, i32 24)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %129
  ret void
}

declare dso_local i32 @halbtc8723b2ant_WifiRssiState(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_BtRssiState(i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_LimitedRx(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_FwDacSwingLvl(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @halbtc8723b2ant_DecBtPwr(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_MEDIUM(i32) #1

declare dso_local i32 @halbtc8723b2ant_CoexTableWithType(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_TdmaDurationAdjust(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism1(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b2ant_SwMechanism2(%struct.TYPE_14__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
