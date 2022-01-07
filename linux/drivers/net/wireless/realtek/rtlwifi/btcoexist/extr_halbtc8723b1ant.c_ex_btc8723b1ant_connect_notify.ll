; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_connect_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_connect_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_ASSOCIATE_START = common dso_local global i64 0, align 8
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_ASSOCIATE_FINISH = common dso_local global i64 0, align 8
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_connect_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 3
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  store %struct.rtl_priv* %15, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 5, i64* %12, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 0
  %18 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32* %11)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %23 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %2
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26, %2
  br label %143

37:                                               ; preds = %31
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = load i32, i32* @FORCE_EXEC, align 4
  %46 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %44, i32 %45, i32 0, i32 8)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %49 = load i32, i32* @FORCE_EXEC, align 4
  %50 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %47, i32 %48, i32 %49, i32 0, i32 0)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = load i32, i32* @COMP_BT_COEXIST, align 4
  %53 = load i32, i32* @DBG_LOUD, align 4
  %54 = call i32 @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %64

57:                                               ; preds = %37
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %61 = load i32, i32* @COMP_BT_COEXIST, align 4
  %62 = load i32, i32* @DBG_LOUD, align 4
  %63 = call i32 @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %57, %41
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %65, i32 0, i32 0
  %67 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %66, align 8
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %70 = call i32 %67(%struct.btc_coexist* %68, i32 %69, i32* %8)
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, 16
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %86

75:                                               ; preds = %64
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = load i32, i32* @NORMAL_EXEC, align 4
  %78 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %76, i32 %77, i32 0, i32 0, i32 0, i32 0)
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %80 = load i32, i32* @NORMAL_EXEC, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %79, i32 %80, i32 0, i32 %81, i64 %82)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = call i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist* %84)
  br label %143

86:                                               ; preds = %64
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 0
  %89 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %92 = call i32 %89(%struct.btc_coexist* %90, i32 %91, i32* %7)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %99 = call i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist* %98)
  br label %143

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %105 = call i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist* %104)
  br label %143

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %113 = load i32, i32* @COMP_BT_COEXIST, align 4
  %114 = load i32, i32* @DBG_LOUD, align 4
  %115 = call i32 @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %116 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %117 = call i32 @btc8723b1ant_act_wifi_not_conn_asso_auth(%struct.btc_coexist* %116)
  br label %143

118:                                              ; preds = %107
  %119 = load i64, i64* @BTC_ASSOCIATE_FINISH, align 8
  %120 = load i64, i64* %4, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %124 = load i32, i32* @COMP_BT_COEXIST, align 4
  %125 = load i32, i32* @DBG_LOUD, align 4
  %126 = call i32 @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %128 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %127, i32 0, i32 0
  %129 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %128, align 8
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %131 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %132 = call i32 %129(%struct.btc_coexist* %130, i32 %131, i32* %6)
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %122
  %136 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %137 = call i32 @btc8723b1ant_action_wifi_not_conn(%struct.btc_coexist* %136)
  br label %141

138:                                              ; preds = %122
  %139 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %140 = call i32 @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist* %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %36, %75, %97, %103, %142, %111
  ret void
}

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i64) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_act_wifi_not_conn_asso_auth(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_not_conn(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
