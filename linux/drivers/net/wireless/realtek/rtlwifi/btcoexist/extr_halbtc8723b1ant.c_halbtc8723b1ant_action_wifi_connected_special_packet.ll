; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_wifi_connected_special_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_wifi_connected_special_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64, i64, i64 }

@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @halbtc8723b1ant_action_wifi_connected_special_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_action_wifi_connected_special_packet(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 1
  store %struct.btc_bt_link_info* %6, %struct.btc_bt_link_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 0
  %9 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %8, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %12 = call i32 %9(%struct.btc_coexist* %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %17 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15
  br label %83

26:                                               ; preds = %20, %1
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %29 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %27, i32 %28, i32 0, i32 0)
  %30 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %31 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %36 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %26
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %40, i32 %41, i32 1, i32 32)
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %43, i32 %44, i32 5)
  br label %83

46:                                               ; preds = %34
  %47 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %48 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %53 = load i32, i32* @NORMAL_EXEC, align 4
  %54 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %52, i32 %53, i32 1, i32 32)
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %55, i32 %56, i32 4)
  br label %82

58:                                               ; preds = %46
  %59 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %60 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @NORMAL_EXEC, align 4
  %66 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %64, i32 %65, i32 1, i32 20)
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = load i32, i32* @NORMAL_EXEC, align 4
  %69 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %67, i32 %68, i32 4)
  br label %81

70:                                               ; preds = %58
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = load i32, i32* @NORMAL_EXEC, align 4
  %73 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %71, i32 %72, i32 0, i32 8)
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %76 = load i32, i32* @NORMAL_EXEC, align 4
  %77 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %74, i32 %75, i32 %76, i32 0, i32 0)
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = load i32, i32* @NORMAL_EXEC, align 4
  %80 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %78, i32 %79, i32 2)
  br label %81

81:                                               ; preds = %70, %63
  br label %82

82:                                               ; preds = %81, %51
  br label %83

83:                                               ; preds = %25, %82, %39
  ret void
}

declare dso_local i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
