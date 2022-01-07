; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionBtInquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_ActionBtInquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32, i32*)*, i32 (%struct.TYPE_12__*, i32, i32*)*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }

@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@pCoexSta = common dso_local global %struct.TYPE_14__* null, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @halbtc8723b1ant_ActionBtInquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_ActionBtInquiry(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_12__*, i32, i32*)*, i32 (%struct.TYPE_12__*, i32, i32*)** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %15 = call i32 %12(%struct.TYPE_12__* %13, i32 %14, i32* %5)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_12__*, i32, i32*)*, i32 (%struct.TYPE_12__*, i32, i32*)** %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %21 = call i32 %18(%struct.TYPE_12__* %19, i32 %20, i32* %4)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_12__*, i32, i32*)*, i32 (%struct.TYPE_12__*, i32, i32*)** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %27 = call i32 %24(%struct.TYPE_12__* %25, i32 %26, i32* %6)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_12__*, i32, i32*)*, i32 (%struct.TYPE_12__*, i32, i32*)** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %33 = call i32 %30(%struct.TYPE_12__* %31, i32 %32, i32* %7)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pCoexSta, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %44 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_12__* %42, i32 %43, i32 0, i32 0)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_12__* %45, i32 %46, i32 0, i32 8)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_12__* %48, i32 %49, i32 0)
  br label %106

51:                                               ; preds = %36, %1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %56, %51
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %69 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_12__* %67, i32 %68, i32 0, i32 0)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = load i32, i32* @NORMAL_EXEC, align 4
  %72 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_12__* %70, i32 %71, i32 1, i32 32)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = load i32, i32* @NORMAL_EXEC, align 4
  %75 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_12__* %73, i32 %74, i32 4)
  br label %105

76:                                               ; preds = %61
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81, %76
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %87 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_12__* %85, i32 %86, i32 0, i32 0)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = load i32, i32* @NORMAL_EXEC, align 4
  %90 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_12__* %88, i32 %89, i32 1, i32 20)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_12__* %91, i32 %92, i32 4)
  br label %104

94:                                               ; preds = %81
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %97 = call i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_12__* %95, i32 %96, i32 0, i32 0)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = load i32, i32* @NORMAL_EXEC, align 4
  %100 = call i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_12__* %98, i32 %99, i32 0, i32 8)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = load i32, i32* @NORMAL_EXEC, align 4
  %103 = call i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_12__* %101, i32 %102, i32 7)
  br label %104

104:                                              ; preds = %94, %84
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %41
  ret void
}

declare dso_local i32 @halbtc8723b1ant_PowerSaveState(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_PsTdma(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_CoexTableWithType(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
