; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_bt_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_bt_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64, i64, i64 }

@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_action_bt_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 2
  store %struct.btc_bt_link_info* %9, %struct.btc_bt_link_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 1
  %12 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %11, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %15 = call i32 %12(%struct.btc_coexist* %13, i32 %14, i32* %5)
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 1
  %18 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32* %4)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %22, i32 0, i32 1
  %24 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %23, align 8
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %27 = call i32 %24(%struct.btc_coexist* %25, i32 %26, i32* %6)
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 0
  %30 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @BTC_SET_BL_BT_TRAFFIC_BUSY, align 4
  %33 = call i32 %30(%struct.btc_coexist* %31, i32 %32, i32* %7)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %39, i32 %40, i32 1, i32 33)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %42, i32 %43, i32 7)
  br label %147

45:                                               ; preds = %1
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %56 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %54, i32 %55, i32 0, i32 0)
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = load i32, i32* @NORMAL_EXEC, align 4
  %59 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %57, i32 %58, i32 0, i32 8)
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %62 = load i32, i32* @NORMAL_EXEC, align 4
  %63 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %60, i32 %61, i32 %62, i32 0, i32 0)
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @NORMAL_EXEC, align 4
  %66 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %64, i32 %65, i32 0)
  br label %146

67:                                               ; preds = %48, %45
  %68 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %69 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %74 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %79 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77, %72, %67
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %85 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %83, i32 %84, i32 0, i32 0)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %91, i32 %92, i32 1, i32 33)
  br label %98

94:                                               ; preds = %82
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = load i32, i32* @NORMAL_EXEC, align 4
  %97 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %95, i32 %96, i32 1, i32 32)
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %100 = load i32, i32* @NORMAL_EXEC, align 4
  %101 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %99, i32 %100, i32 4)
  br label %145

102:                                              ; preds = %77
  %103 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %104 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107, %102
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %112 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %113 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %111, i32 %112, i32 0, i32 0)
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %120 = load i32, i32* @NORMAL_EXEC, align 4
  %121 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %119, i32 %120, i32 1, i32 33)
  br label %126

122:                                              ; preds = %110
  %123 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %124 = load i32, i32* @NORMAL_EXEC, align 4
  %125 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %123, i32 %124, i32 1, i32 32)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %128 = load i32, i32* @NORMAL_EXEC, align 4
  %129 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %127, i32 %128, i32 4)
  br label %144

130:                                              ; preds = %107
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %132 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %133 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %131, i32 %132, i32 0, i32 0)
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %135 = load i32, i32* @NORMAL_EXEC, align 4
  %136 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %134, i32 %135, i32 0, i32 8)
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %138 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %139 = load i32, i32* @NORMAL_EXEC, align 4
  %140 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %137, i32 %138, i32 %139, i32 0, i32 0)
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %142 = load i32, i32* @NORMAL_EXEC, align 4
  %143 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %141, i32 %142, i32 7)
  br label %144

144:                                              ; preds = %130, %126
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %53
  br label %147

147:                                              ; preds = %146, %38
  ret void
}

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
