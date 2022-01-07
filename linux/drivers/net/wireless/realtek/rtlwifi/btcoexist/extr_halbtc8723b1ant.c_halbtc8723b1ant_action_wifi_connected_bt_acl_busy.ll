; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_wifi_connected_bt_acl_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_action_wifi_connected_bt_acl_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.btc_coexist = type { %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i32, i64, i64, i64, i64, i64, i64 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i64)* @halbtc8723b1ant_action_wifi_connected_bt_acl_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_action_wifi_connected_bt_acl_busy(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 0
  store %struct.btc_bt_link_info* %7, %struct.btc_bt_link_info** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 950
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %19 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %23

20:                                               ; preds = %12, %2
  %21 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %22 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %25 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %29, i64 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %152

34:                                               ; preds = %23
  %35 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %36 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = load i32, i32* @NORMAL_EXEC, align 4
  %46 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %44, i32 %45, i32 1, i32 32)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %47, i32 %48, i32 4)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %61

52:                                               ; preds = %39
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @btc8723b1ant_tdma_dur_adj_for_acl(%struct.btc_coexist* %53, i64 %54)
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = load i32, i32* @NORMAL_EXEC, align 4
  %58 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %56, i32 %57, i32 1)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %43
  br label %151

62:                                               ; preds = %34
  %63 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %64 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %69 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %74 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %79 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %84 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82, %67
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %89 = load i32, i32* @NORMAL_EXEC, align 4
  %90 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %88, i32 %89, i32 1, i32 13)
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %91, i32 %92, i32 4)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  br label %150

96:                                               ; preds = %82, %77, %72
  %97 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %98 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %103 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = load i32, i32* @NORMAL_EXEC, align 4
  %109 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %107, i32 %108, i32 1, i32 14)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %113 = load i32, i32* @NORMAL_EXEC, align 4
  %114 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %112, i32 %113, i32 4)
  br label %149

115:                                              ; preds = %101, %96
  %116 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %117 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %122 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %5, align 8
  %127 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125, %115
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = load i32, i32* @NORMAL_EXEC, align 4
  %133 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %131, i32 %132, i32 1, i32 3)
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = load i32, i32* @NORMAL_EXEC, align 4
  %136 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %134, i32 %135, i32 4)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 4
  br label %148

139:                                              ; preds = %125, %120
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %141 = load i32, i32* @NORMAL_EXEC, align 4
  %142 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %140, i32 %141, i32 1, i32 33)
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %144 = load i32, i32* @NORMAL_EXEC, align 4
  %145 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %143, i32 %144, i32 4)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %130
  br label %149

149:                                              ; preds = %148, %106
  br label %150

150:                                              ; preds = %149, %87
  br label %151

151:                                              ; preds = %150, %61
  br label %152

152:                                              ; preds = %28, %151
  ret void
}

declare dso_local i32 @btc8723b1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i64) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b1ant_tdma_dur_adj_for_acl(%struct.btc_coexist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
