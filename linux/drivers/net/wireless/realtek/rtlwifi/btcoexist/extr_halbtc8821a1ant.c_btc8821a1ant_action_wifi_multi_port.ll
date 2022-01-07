; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_multi_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_action_wifi_multi_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64 }

@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8821A_1ANT_BT_STATUS_ACL_BUSY = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BT_8821A_1ANT_BT_STATUS_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY = common dso_local global i64 0, align 8
@BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a1ant_action_wifi_multi_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %4 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %5 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %4, i32 0, i32 0
  store %struct.btc_bt_link_info* %5, %struct.btc_bt_link_info** %3, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %8 = call i32 @btc8821a1ant_power_save_state(%struct.btc_coexist* %6, i32 %7, i32 0, i32 0)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_BUSY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %16 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %20, i32 %21, i32 1, i32 14)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %23, i32 %24, i32 1)
  br label %51

26:                                               ; preds = %14
  %27 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %28 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %33 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = load i32, i32* @NORMAL_EXEC, align 4
  %39 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %37, i32 %38, i32 0, i32 8)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %40, i32 %41, i32 4)
  br label %50

43:                                               ; preds = %31, %26
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %45 = load i32, i32* @NORMAL_EXEC, align 4
  %46 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %44, i32 %45, i32 1, i32 20)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %47, i32 %48, i32 4)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %19
  br label %76

52:                                               ; preds = %1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_SCO_BUSY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @BT_8821A_1ANT_BT_STATUS_ACL_SCO_BUSY, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58, %52
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = load i32, i32* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_SCAN, align 4
  %67 = call i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %65, i32 %66)
  br label %75

68:                                               ; preds = %58
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %70 = load i32, i32* @NORMAL_EXEC, align 4
  %71 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %69, i32 %70, i32 0, i32 8)
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %73 = load i32, i32* @NORMAL_EXEC, align 4
  %74 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %72, i32 %73, i32 2)
  br label %75

75:                                               ; preds = %68, %64
  br label %76

76:                                               ; preds = %75, %51
  ret void
}

declare dso_local i32 @btc8821a1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
