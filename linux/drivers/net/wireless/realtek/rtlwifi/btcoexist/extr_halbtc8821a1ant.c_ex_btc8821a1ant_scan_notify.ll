; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_scan_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_scan_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", align 1
@BTC_SCAN_START = common dso_local global i64 0, align 8
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"[BTCoex], SCAN START notify\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", align 1
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SCAN_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_scan_notify(%struct.btc_coexist* %0, i64 %1) #0 {
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
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  br label %157

26:                                               ; preds = %20
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 0
  %29 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %28, align 8
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %32 = call i32 %29(%struct.btc_coexist* %30, i32 %31, i32* %9)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %37 = load i32, i32* @COMP_BT_COEXIST, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = call i32 @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %41 = call i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist* %40)
  br label %157

42:                                               ; preds = %26
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @BTC_SCAN_START, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = load i32, i32* @COMP_BT_COEXIST, align 4
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = call i32 @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = load i32, i32* @FORCE_EXEC, align 4
  %55 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %53, i32 %54, i32 0, i32 8)
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = load i32, i32* @COMP_BT_COEXIST, align 4
  %61 = load i32, i32* @DBG_LOUD, align 4
  %62 = call i32 @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %56, %46
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %157

69:                                               ; preds = %63
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 0
  %72 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %74 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %75 = call i32 %72(%struct.btc_coexist* %73, i32 %74, i32* %7)
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 0
  %78 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %77, align 8
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %80 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %81 = call i32 %78(%struct.btc_coexist* %79, i32 %80, i32* %6)
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = call i32 @btc8821a1ant_query_bt_info(%struct.btc_coexist* %82)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %84, i32 0, i32 0
  %86 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %85, align 8
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %89 = call i32 %86(%struct.btc_coexist* %87, i32 %88, i32* %10)
  %90 = load i32, i32* %10, align 4
  %91 = ashr i32 %90, 16
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sge i32 %92, 2
  br i1 %93, label %94, label %105

94:                                               ; preds = %69
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %96 = load i32, i32* @NORMAL_EXEC, align 4
  %97 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %95, i32 %96, i32 0, i32 0, i32 0, i32 0)
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %99 = load i32, i32* @NORMAL_EXEC, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @btc8821a1ant_limited_rx(%struct.btc_coexist* %98, i32 %99, i32 0, i32 %100, i64 %101)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %104 = call i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist* %103)
  br label %157

105:                                              ; preds = %69
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %112 = call i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist* %111)
  br label %157

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %118 = call i32 @btc8821a1ant_action_hs(%struct.btc_coexist* %117)
  br label %157

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* @BTC_SCAN_START, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %126 = load i32, i32* @COMP_BT_COEXIST, align 4
  %127 = load i32, i32* @DBG_LOUD, align 4
  %128 = call i32 @RT_TRACE(%struct.rtl_priv* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %133 = call i32 @btc8821a1ant_act_wifi_not_conn_scan(%struct.btc_coexist* %132)
  br label %137

134:                                              ; preds = %124
  %135 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %136 = call i32 @btc8821a1ant_action_wifi_connected_scan(%struct.btc_coexist* %135)
  br label %137

137:                                              ; preds = %134, %131
  br label %157

138:                                              ; preds = %120
  %139 = load i64, i64* @BTC_SCAN_FINISH, align 8
  %140 = load i64, i64* %4, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %144 = load i32, i32* @COMP_BT_COEXIST, align 4
  %145 = load i32, i32* @DBG_LOUD, align 4
  %146 = call i32 @RT_TRACE(%struct.rtl_priv* %143, i32 %144, i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %151 = call i32 @btc8821a1ant_action_wifi_not_connected(%struct.btc_coexist* %150)
  br label %155

152:                                              ; preds = %142
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %154 = call i32 @btc8821a1ant_action_wifi_connected(%struct.btc_coexist* %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155, %138
  br label %157

157:                                              ; preds = %25, %35, %68, %94, %110, %116, %156, %137
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_query_bt_info(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i64) #1

declare dso_local i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_act_wifi_not_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_connected_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_not_connected(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_connected(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
