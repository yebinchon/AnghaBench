; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_scan_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_scan_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_SCAN_START = common dso_local global i64 0, align 8
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[BTCoex], SCAN START notify\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"[BTCoex], 0x948=0x%x, 0x765=0x%x, 0x67=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", align 1
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SCAN_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_scan_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 5
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %16, align 8
  store %struct.rtl_priv* %17, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 5, i64* %14, align 8
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %2
  br label %177

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @BTC_SCAN_START, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = load i32, i32* @COMP_BT_COEXIST, align 4
  %37 = load i32, i32* @DBG_LOUD, align 4
  %38 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %40 = load i32, i32* @FORCE_EXEC, align 4
  %41 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %39, i32 %40, i32 0, i32 8)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %43 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %44 = load i32, i32* @FORCE_EXEC, align 4
  %45 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %42, i32 %43, i32 %44, i32 0, i32 0)
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 0
  %48 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %47, align 8
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %50 = call i32 %48(%struct.btc_coexist* %49, i32 2376)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %52 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %51, i32 0, i32 1
  %53 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %52, align 8
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %55 = call i64 %53(%struct.btc_coexist* %54, i32 1893)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %56, i32 0, i32 1
  %58 = load i64 (%struct.btc_coexist*, i32)*, i64 (%struct.btc_coexist*, i32)** %57, align 8
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = call i64 %58(%struct.btc_coexist* %59, i32 103)
  store i64 %60, i64* %9, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65, i64 %66)
  br label %83

68:                                               ; preds = %28
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = load i32, i32* @COMP_BT_COEXIST, align 4
  %73 = load i32, i32* @DBG_LOUD, align 4
  %74 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %76 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %75, i32 0, i32 2
  %77 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %76, align 8
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %79 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 %77(%struct.btc_coexist* %78, i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %68, %32
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %177

89:                                               ; preds = %83
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %90, i32 0, i32 2
  %92 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %91, align 8
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %94 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %95 = call i32 %92(%struct.btc_coexist* %93, i32 %94, i32* %7)
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %97 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %96, i32 0, i32 2
  %98 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %97, align 8
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %100 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %101 = call i32 %98(%struct.btc_coexist* %99, i32 %100, i32* %6)
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %103 = call i32 @halbtc8723b1ant_query_bt_info(%struct.btc_coexist* %102)
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %105 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %104, i32 0, i32 2
  %106 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %105, align 8
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %109 = call i32 %106(%struct.btc_coexist* %107, i32 %108, i32* %11)
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 16
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp sge i32 %112, 2
  br i1 %113, label %114, label %125

114:                                              ; preds = %89
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = load i32, i32* @NORMAL_EXEC, align 4
  %117 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %115, i32 %116, i32 0, i32 0, i32 0, i32 0)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %119 = load i32, i32* @NORMAL_EXEC, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %118, i32 %119, i32 0, i32 %120, i64 %121)
  %123 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %124 = call i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist* %123)
  br label %177

125:                                              ; preds = %89
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = call i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist* %131)
  br label %177

133:                                              ; preds = %125
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %138 = call i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist* %137)
  br label %177

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* @BTC_SCAN_START, align 8
  %142 = load i64, i64* %4, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %146 = load i32, i32* @COMP_BT_COEXIST, align 4
  %147 = load i32, i32* @DBG_LOUD, align 4
  %148 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %144
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %153 = call i32 @btc8723b1ant_action_wifi_not_conn_scan(%struct.btc_coexist* %152)
  br label %157

154:                                              ; preds = %144
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %156 = call i32 @btc8723b1ant_action_wifi_conn_scan(%struct.btc_coexist* %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %177

158:                                              ; preds = %140
  %159 = load i64, i64* @BTC_SCAN_FINISH, align 8
  %160 = load i64, i64* %4, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = load i32, i32* @COMP_BT_COEXIST, align 4
  %165 = load i32, i32* @DBG_LOUD, align 4
  %166 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %171 = call i32 @btc8723b1ant_action_wifi_not_conn(%struct.btc_coexist* %170)
  br label %175

172:                                              ; preds = %162
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %174 = call i32 @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist* %173)
  br label %175

175:                                              ; preds = %172, %169
  br label %176

176:                                              ; preds = %175, %158
  br label %177

177:                                              ; preds = %27, %88, %114, %130, %136, %176, %157
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_query_bt_info(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i64) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_not_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8723b1ant_action_wifi_not_conn(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_connected(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
