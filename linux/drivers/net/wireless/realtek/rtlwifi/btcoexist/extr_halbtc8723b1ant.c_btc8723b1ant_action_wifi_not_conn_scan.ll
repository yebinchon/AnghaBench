; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_btc8723b1ant_action_wifi_not_conn_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_btc8723b1ant_action_wifi_not_conn_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64 }

@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BT_8723B_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b1ant_action_wifi_not_conn_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b1ant_action_wifi_not_conn_scan(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %4 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %5 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %4, i32 0, i32 0
  store %struct.btc_bt_link_info* %5, %struct.btc_bt_link_info** %3, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %8 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %6, i32 %7, i32 0, i32 0)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_BUSY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %16 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %20, i32 %21, i32 1, i32 32)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %23, i32 %24, i32 4)
  br label %46

26:                                               ; preds = %14
  %27 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %28 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = load i32, i32* @NORMAL_EXEC, align 4
  %34 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %32, i32 %33, i32 1, i32 22)
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = load i32, i32* @NORMAL_EXEC, align 4
  %37 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %35, i32 %36, i32 4)
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %39, i32 %40, i32 1, i32 20)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %19
  br label %75

47:                                               ; preds = %1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_SCO_BUSY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %47
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = load i32, i32* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN, align 4
  %62 = call i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %60, i32 %61)
  br label %74

63:                                               ; preds = %53
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @NORMAL_EXEC, align 4
  %66 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %64, i32 %65, i32 0, i32 8)
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %69 = load i32, i32* @NORMAL_EXEC, align 4
  %70 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %67, i32 %68, i32 %69, i32 0, i32 0)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = load i32, i32* @NORMAL_EXEC, align 4
  %73 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %71, i32 %72, i32 2)
  br label %74

74:                                               ; preds = %63, %59
  br label %75

75:                                               ; preds = %74, %46
  ret void
}

declare dso_local i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
