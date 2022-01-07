; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_ScanNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_EXhalbtc8723b1ant_ScanNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32, i32*)*, %struct.TYPE_24__, i64, i64 }
%struct.TYPE_24__ = type { i64 }

@BTC_SCAN_START = common dso_local global i64 0, align 8
@pCoexSta = common dso_local global %struct.TYPE_23__* null, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[BTCoex], SCAN START notify\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"[BTCoex], 0x948 = 0x%x, 0x765 = 0x%x, 0x67 = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", align 1
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SCAN_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b1ant_ScanNotify(%struct.TYPE_25__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 5, i64* %10, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  br label %160

24:                                               ; preds = %18
  %25 = load i64, i64* @BTC_SCAN_START, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pCoexSta, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %32 = load i32, i32* @INTF_NOTIFY, align 4
  %33 = call i32 @BTC_PRINT(i32 %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = load i32, i32* @FORCE_EXEC, align 4
  %36 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_25__* %34, i32 %35, i32 0, i32 8)
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %38, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = call i32 %39(%struct.TYPE_25__* %40, i32 2376)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %43, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %46 = call i64 %44(%struct.TYPE_25__* %45, i32 1893)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 1
  %49 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %48, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %51 = call i64 %49(%struct.TYPE_25__* %50, i32 103)
  store i64 %51, i64* %12, align 8
  %52 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %53 = load i32, i32* @INTF_NOTIFY, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @BTC_PRINT(i32 %52, i32 %53, i8* %57)
  br label %73

59:                                               ; preds = %24
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pCoexSta, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %63 = load i32, i32* @INTF_NOTIFY, align 4
  %64 = call i32 @BTC_PRINT(i32 %62, i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = load i32 (%struct.TYPE_25__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i32, i32*)** %66, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pCoexSta, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = call i32 %67(%struct.TYPE_25__* %68, i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %59, %28
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %160

80:                                               ; preds = %73
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  %83 = load i32 (%struct.TYPE_25__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i32, i32*)** %82, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %85 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %86 = call i32 %83(%struct.TYPE_25__* %84, i32 %85, i32* %6)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = load i32 (%struct.TYPE_25__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i32, i32*)** %88, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %92 = call i32 %89(%struct.TYPE_25__* %90, i32 %91, i32* %5)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %94 = call i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_25__* %93)
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = load i32 (%struct.TYPE_25__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i32, i32*)** %96, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %99 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %100 = call i32 %97(%struct.TYPE_25__* %98, i32 %99, i32* %7)
  %101 = load i32, i32* %7, align 4
  %102 = ashr i32 %101, 16
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sge i32 %103, 2
  br i1 %104, label %105, label %116

105:                                              ; preds = %80
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = load i32, i32* @NORMAL_EXEC, align 4
  %108 = call i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_25__* %106, i32 %107, i32 0, i32 0, i32 0, i32 0)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = load i32, i32* @NORMAL_EXEC, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_25__* %109, i32 %110, i32 0, i32 %111, i64 %112)
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %115 = call i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_25__* %114)
  br label %160

116:                                              ; preds = %80
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pCoexSta, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %123 = call i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_25__* %122)
  br label %160

124:                                              ; preds = %116
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %129 = call i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_25__* %128)
  br label %160

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* @BTC_SCAN_START, align 8
  %133 = load i64, i64* %4, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = call i32 @halbtc8723b1ant_ActionWifiNotConnectedScan(%struct.TYPE_25__* %139)
  br label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %143 = call i32 @halbtc8723b1ant_ActionWifiConnectedScan(%struct.TYPE_25__* %142)
  br label %144

144:                                              ; preds = %141, %138
  br label %160

145:                                              ; preds = %131
  %146 = load i64, i64* @BTC_SCAN_FINISH, align 8
  %147 = load i64, i64* %4, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %154 = call i32 @halbtc8723b1ant_ActionWifiNotConnected(%struct.TYPE_25__* %153)
  br label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = call i32 @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_25__* %156)
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %145
  br label %160

160:                                              ; preds = %23, %79, %105, %121, %127, %159, %144
  ret void
}

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_QueryBtInfo(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_LimitedTx(%struct.TYPE_25__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_LimitedRx(%struct.TYPE_25__*, i32, i32, i32, i64) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiMultiPort(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionHs(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnectedScan(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnectedScan(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiNotConnected(%struct.TYPE_25__*) #1

declare dso_local i32 @halbtc8723b1ant_ActionWifiConnected(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
