; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_is_2_ant_common_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_is_2_ant_common_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.btdm_8723 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Wifi idle + Bt idle, bt coex mechanism always off!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Wifi non-idle + Bt disabled/idle!!\0A\00", align 1
@TDMA_DAC_SWING_OFF = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Bt non-idle!\0A\00", align 1
@RT_MEDIA_CONNECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Wifi connection exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No Wifi connection!\0A\00", align 1
@BT_COEX_STATE_BTINFO_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_is_2_ant_common_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723e_dm_bt_is_2_ant_common_action(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.btdm_8723, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl8723e_dm_bt_btdm_structure_reload(%struct.ieee80211_hw* %8, %struct.btdm_8723* %4)
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i64 @rtl8723e_dm_bt_is_wifi_busy(%struct.ieee80211_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @COMP_BT_COEXIST, align 4
  %22 = load i32, i32* @DBG_DMESG, align 4
  %23 = call i32 @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @rtl8723e_dm_bt_btdm_structure_reload_all_off(%struct.ieee80211_hw* %24, %struct.btdm_8723* %4)
  store i32 1, i32* %5, align 4
  br label %97

26:                                               ; preds = %13, %1
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = call i64 @rtl8723e_dm_bt_is_wifi_busy(%struct.ieee80211_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %30
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = load i32, i32* @COMP_BT_COEXIST, align 4
  %39 = load i32, i32* @DBG_DMESG, align 4
  %40 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 4
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 5
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 6
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 7
  store i32 1515891370, i32* %48, align 4
  %49 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 8
  store i32 52428, i32* %49, align 8
  %50 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 9
  store i32 3, i32* %50, align 4
  %51 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 10
  store i32 0, i32* %51, align 8
  %52 = load i8*, i8** @TDMA_DAC_SWING_OFF, align 8
  %53 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 13
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 11
  store i32 0, i32* %54, align 4
  store i32 1, i32* %5, align 4
  br label %96

55:                                               ; preds = %30, %26
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = load i32, i32* @COMP_BT_COEXIST, align 4
  %64 = load i32, i32* @DBG_DMESG, align 4
  %65 = call i32 @RT_TRACE(%struct.rtl_priv* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i64 @mgnt_link_status_query(%struct.ieee80211_hw* %66)
  %68 = load i64, i64* @RT_MEDIA_CONNECT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = load i32, i32* @COMP_BT_COEXIST, align 4
  %73 = load i32, i32* @DBG_DMESG, align 4
  %74 = call i32 @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %94

75:                                               ; preds = %61
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %77 = load i32, i32* @COMP_BT_COEXIST, align 4
  %78 = load i32, i32* @DBG_DMESG, align 4
  %79 = call i32 @RT_TRACE(%struct.rtl_priv* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 2
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 3
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 4
  store i32 0, i32* %84, align 8
  %85 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 5
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 6
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 7
  store i32 1431655765, i32* %87, align 4
  %88 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 8
  store i32 65535, i32* %88, align 8
  %89 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 9
  store i32 3, i32* %89, align 4
  %90 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 10
  store i32 0, i32* %90, align 8
  %91 = load i8*, i8** @TDMA_DAC_SWING_OFF, align 8
  %92 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 13
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 11
  store i32 0, i32* %93, align 4
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %75, %70
  br label %95

95:                                               ; preds = %94, %55
  br label %96

96:                                               ; preds = %95, %36
  br label %97

97:                                               ; preds = %96, %19
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %99 = call i64 @rtl8723e_dm_bt_need_to_dec_bt_pwr(%struct.ieee80211_hw* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.btdm_8723, %struct.btdm_8723* %4, i32 0, i32 12
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %101, %97
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* @BT_COEX_STATE_BTINFO_COMMON, align 4
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %118 = call i64 @rtl8723e_dm_bt_is_coexist_state_changed(%struct.ieee80211_hw* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %122 = call i32 @rtl8723e_dm_bt_set_bt_dm(%struct.ieee80211_hw* %121, %struct.btdm_8723* %4)
  br label %123

123:                                              ; preds = %120, %116, %113
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_btdm_structure_reload(%struct.ieee80211_hw*, %struct.btdm_8723*) #1

declare dso_local i64 @rtl8723e_dm_bt_is_wifi_busy(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl8723e_dm_bt_btdm_structure_reload_all_off(%struct.ieee80211_hw*, %struct.btdm_8723*) #1

declare dso_local i64 @mgnt_link_status_query(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_need_to_dec_bt_pwr(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_is_coexist_state_changed(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_set_bt_dm(%struct.ieee80211_hw*, %struct.btdm_8723*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
