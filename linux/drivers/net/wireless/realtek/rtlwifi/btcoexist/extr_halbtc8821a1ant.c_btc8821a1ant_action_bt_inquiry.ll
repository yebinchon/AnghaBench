; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_bt_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_bt_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64, i64, i64, i64 }

@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_TRAFFIC_BUSY = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_action_bt_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist* %0) #0 {
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
  %14 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %15 = call i32 %12(%struct.btc_coexist* %13, i32 %14, i32* %4)
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 1
  %18 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32* %5)
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
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %44 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %42, i32 %43, i32 0, i32 0)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %45, i32 %46, i32 0, i32 8)
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %48, i32 %49, i32 0)
  br label %127

51:                                               ; preds = %36, %1
  %52 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %53 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %58 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %63 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %56, %51
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %69 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %67, i32 %68, i32 0, i32 0)
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = load i32, i32* @NORMAL_EXEC, align 4
  %72 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %70, i32 %71, i32 1, i32 32)
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = load i32, i32* @NORMAL_EXEC, align 4
  %75 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %73, i32 %74, i32 4)
  br label %126

76:                                               ; preds = %61
  %77 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %78 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %83 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %89 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %87, i32 %88, i32 0, i32 0)
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = load i32, i32* @NORMAL_EXEC, align 4
  %92 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %90, i32 %91, i32 1, i32 14)
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %94 = load i32, i32* @NORMAL_EXEC, align 4
  %95 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %93, i32 %94, i32 1)
  br label %125

96:                                               ; preds = %81, %76
  %97 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %98 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101, %96
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %107 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %105, i32 %106, i32 0, i32 0)
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %109 = load i32, i32* @NORMAL_EXEC, align 4
  %110 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %108, i32 %109, i32 1, i32 20)
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %112 = load i32, i32* @NORMAL_EXEC, align 4
  %113 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %111, i32 %112, i32 4)
  br label %124

114:                                              ; preds = %101
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %116 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %117 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %115, i32 %116, i32 0, i32 0)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %119 = load i32, i32* @NORMAL_EXEC, align 4
  %120 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %118, i32 %119, i32 0, i32 8)
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %122 = load i32, i32* @NORMAL_EXEC, align 4
  %123 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %121, i32 %122, i32 7)
  br label %124

124:                                              ; preds = %114, %104
  br label %125

125:                                              ; preds = %124, %86
  br label %126

126:                                              ; preds = %125, %66
  br label %127

127:                                              ; preds = %126, %41
  ret void
}

declare dso_local i32 @btc8821a1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
