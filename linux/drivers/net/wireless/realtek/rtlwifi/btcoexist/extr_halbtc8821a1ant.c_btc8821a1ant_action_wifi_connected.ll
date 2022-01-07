; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { %struct.TYPE_3__, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[BTCoex], CoexForWifiConnect()===>\0A\00", align 1
@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\0A\00", align 1
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\0A\00", align 1
@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BT_8821A_1ANT_WIFI_STATUS_CONNECTED_IDLE = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BT_8821A_1ANT_WIFI_STATUS_CONNECTED_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_action_wifi_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_action_wifi_connected(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 1
  %19 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32* %8)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = call i32 @btc8821a1ant_act_wifi_conn_sp_pkt(%struct.btc_coexist* %26)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %195

32:                                               ; preds = %1
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 1
  %35 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %34, align 8
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %38 = call i32 %35(%struct.btc_coexist* %36, i32 %37, i32* %5)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 1
  %41 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %44 = call i32 %41(%struct.btc_coexist* %42, i32 %43, i32* %6)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %45, i32 0, i32 1
  %47 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %46, align 8
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %50 = call i32 %47(%struct.btc_coexist* %48, i32 %49, i32* %7)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56, %53, %32
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = call i32 @btc8821a1ant_action_wifi_connected_scan(%struct.btc_coexist* %63)
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = call i32 @btc8821a1ant_act_wifi_conn_sp_pkt(%struct.btc_coexist* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = load i32, i32* @COMP_BT_COEXIST, align 4
  %71 = load i32, i32* @DBG_LOUD, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %195

73:                                               ; preds = %56
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 1
  %76 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %79 = call i32 %76(%struct.btc_coexist* %77, i32 %78, i32* %9)
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %81 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %80, i32 0, i32 1
  %82 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %81, align 8
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %85 = call i32 %82(%struct.btc_coexist* %83, i32 %84, i32* %4)
  %86 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %73
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %91
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %111 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %112 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %110, i32 %111, i32 0, i32 0)
  br label %117

113:                                              ; preds = %103, %100
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %115 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %116 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %114, i32 %115, i32 80, i32 4)
  br label %117

117:                                              ; preds = %113, %109
  br label %122

118:                                              ; preds = %94, %91, %73
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %120 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %121 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %119, i32 %120, i32 0, i32 0)
  br label %122

122:                                              ; preds = %118, %117
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %160, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %133 = load i32, i32* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 4
  %134 = call i32 @btc8821a1ant_act_wifi_con_bt_acl_busy(%struct.btc_coexist* %132, i32 %133)
  br label %159

135:                                              ; preds = %125
  %136 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141, %135
  %148 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %149 = load i32, i32* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 4
  %150 = call i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %148, i32 %149)
  br label %158

151:                                              ; preds = %141
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %153 = load i32, i32* @NORMAL_EXEC, align 4
  %154 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %152, i32 %153, i32 0, i32 8)
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %156 = load i32, i32* @NORMAL_EXEC, align 4
  %157 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %155, i32 %156, i32 2)
  br label %158

158:                                              ; preds = %151, %147
  br label %159

159:                                              ; preds = %158, %131
  br label %195

160:                                              ; preds = %122
  %161 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %168 = load i32, i32* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 4
  %169 = call i32 @btc8821a1ant_act_wifi_con_bt_acl_busy(%struct.btc_coexist* %167, i32 %168)
  br label %194

170:                                              ; preds = %160
  %171 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %177, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176, %170
  %183 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %184 = load i32, i32* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 4
  %185 = call i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %183, i32 %184)
  br label %193

186:                                              ; preds = %176
  %187 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %188 = load i32, i32* @NORMAL_EXEC, align 4
  %189 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %187, i32 %188, i32 0, i32 8)
  %190 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %191 = load i32, i32* @NORMAL_EXEC, align 4
  %192 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %190, i32 %191, i32 2)
  br label %193

193:                                              ; preds = %186, %182
  br label %194

194:                                              ; preds = %193, %166
  br label %195

195:                                              ; preds = %25, %68, %194, %159
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_act_wifi_conn_sp_pkt(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_connected_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_act_wifi_con_bt_acl_busy(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
