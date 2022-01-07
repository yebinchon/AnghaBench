; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_act_wifi_con_bt_acl_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_act_wifi_con_bt_acl_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64, i64, i64, i64, i64 }

@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8821A_1ANT_WIFI_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i64)* @btc8821a1ant_act_wifi_con_bt_acl_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_act_wifi_con_bt_acl_busy(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btc_bt_link_info*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 0
  store %struct.btc_bt_link_info* %8, %struct.btc_bt_link_info** %6, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %10 = call i64 @btc8821a1ant_bt_rssi_state(%struct.btc_coexist* %9, i32 2, i32 28, i32 0)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %12 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist* %16, i64 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %170

21:                                               ; preds = %2
  %22 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %23 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @BT_8821A_1ANT_WIFI_STATUS_CONNECTED_IDLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = load i32, i32* @NORMAL_EXEC, align 4
  %33 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %31, i32 %32, i32 1, i32 32)
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = load i32, i32* @NORMAL_EXEC, align 4
  %36 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %34, i32 %35, i32 1)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %64

39:                                               ; preds = %26
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %48, i32 %49, i32 1, i32 14)
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %51, i32 %52, i32 1)
  br label %63

54:                                               ; preds = %43, %39
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %55, i32 %56, i32 1, i32 14)
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = load i32, i32* @NORMAL_EXEC, align 4
  %60 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %58, i32 %59, i32 1)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %47
  br label %64

64:                                               ; preds = %63, %30
  br label %169

65:                                               ; preds = %21
  %66 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %67 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %72 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %75
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = load i32, i32* @NORMAL_EXEC, align 4
  %86 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %84, i32 %85, i32 1, i32 14)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %95

89:                                               ; preds = %79
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = load i32, i32* @NORMAL_EXEC, align 4
  %92 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %90, i32 %91, i32 1, i32 14)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %97 = load i32, i32* @NORMAL_EXEC, align 4
  %98 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %96, i32 %97, i32 1)
  br label %168

99:                                               ; preds = %70, %65
  %100 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %101 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %106 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %111 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109, %99
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = load i32, i32* @NORMAL_EXEC, align 4
  %117 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %115, i32 %116, i32 1, i32 3)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %119 = load i32, i32* @NORMAL_EXEC, align 4
  %120 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %118, i32 %119, i32 6)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  br label %167

123:                                              ; preds = %109, %104
  %124 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %125 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %130 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %135 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %140 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %6, align 8
  %145 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143, %128
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %150 = load i32, i32* @NORMAL_EXEC, align 4
  %151 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %149, i32 %150, i32 1, i32 43)
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %153 = load i32, i32* @NORMAL_EXEC, align 4
  %154 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %152, i32 %153, i32 1)
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 4
  br label %166

157:                                              ; preds = %143, %138, %133
  %158 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %159 = load i32, i32* @NORMAL_EXEC, align 4
  %160 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %158, i32 %159, i32 1, i32 11)
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %162 = load i32, i32* @NORMAL_EXEC, align 4
  %163 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %161, i32 %162, i32 1)
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %157, %148
  br label %167

167:                                              ; preds = %166, %114
  br label %168

168:                                              ; preds = %167, %95
  br label %169

169:                                              ; preds = %168, %64
  br label %170

170:                                              ; preds = %15, %169
  ret void
}

declare dso_local i64 @btc8821a1ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_act_bt_sco_hid_only_busy(%struct.btc_coexist*, i64) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
