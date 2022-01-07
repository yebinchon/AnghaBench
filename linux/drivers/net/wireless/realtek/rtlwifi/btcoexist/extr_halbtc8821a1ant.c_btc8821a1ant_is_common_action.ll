; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_is_common_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_is_common_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"[BTCoex], Wifi non connected-idle + BT non connected-idle!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", align 1
@BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"[BTCoex], Wifi non connected-idle + BT connected-idle!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"[BTCoex], Wifi non connected-idle + BT Busy!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8821a1ant_is_common_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8821a1ant_is_common_action(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 1
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 0
  %12 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %11, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %15 = call i32 %12(%struct.btc_coexist* %13, i32 %14, i32* %5)
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 0
  %18 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32* %6)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @COMP_BT_COEXIST, align 4
  %33 = load i32, i32* @DBG_LOUD, align 4
  %34 = call i32 @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = call i32 @btc8821a1ant_sw_mechanism(%struct.btc_coexist* %35, i32 0)
  store i32 1, i32* %4, align 4
  br label %119

37:                                               ; preds = %24, %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = load i32, i32* @COMP_BT_COEXIST, align 4
  %49 = load i32, i32* @DBG_LOUD, align 4
  %50 = call i32 @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = call i32 @btc8821a1ant_sw_mechanism(%struct.btc_coexist* %51, i32 0)
  store i32 1, i32* %4, align 4
  br label %118

53:                                               ; preds = %40, %37
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i32, i32* @COMP_BT_COEXIST, align 4
  %65 = load i32, i32* @DBG_LOUD, align 4
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = call i32 @btc8821a1ant_sw_mechanism(%struct.btc_coexist* %67, i32 0)
  store i32 1, i32* %4, align 4
  br label %117

69:                                               ; preds = %56, %53
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @COMP_BT_COEXIST, align 4
  %81 = load i32, i32* @DBG_LOUD, align 4
  %82 = call i32 @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = call i32 @btc8821a1ant_sw_mechanism(%struct.btc_coexist* %83, i32 0)
  store i32 1, i32* %4, align 4
  br label %116

85:                                               ; preds = %72, %69
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = load i32, i32* @COMP_BT_COEXIST, align 4
  %97 = load i32, i32* @DBG_LOUD, align 4
  %98 = call i32 @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %100 = call i32 @btc8821a1ant_sw_mechanism(%struct.btc_coexist* %99, i32 0)
  store i32 1, i32* %4, align 4
  br label %115

101:                                              ; preds = %88, %85
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = load i32, i32* @COMP_BT_COEXIST, align 4
  %107 = load i32, i32* @DBG_LOUD, align 4
  %108 = call i32 @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %114

109:                                              ; preds = %101
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = load i32, i32* @COMP_BT_COEXIST, align 4
  %112 = load i32, i32* @DBG_LOUD, align 4
  %113 = call i32 @RT_TRACE(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %104
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %78
  br label %117

117:                                              ; preds = %116, %62
  br label %118

118:                                              ; preds = %117, %46
  br label %119

119:                                              ; preds = %118, %30
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_sw_mechanism(%struct.btc_coexist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
