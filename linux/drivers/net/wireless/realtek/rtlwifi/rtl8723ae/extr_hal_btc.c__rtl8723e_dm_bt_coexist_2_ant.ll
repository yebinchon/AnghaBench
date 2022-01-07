; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c__rtl8723e_dm_bt_coexist_2_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c__rtl8723e_dm_bt_coexist_2_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[BTCoex] Get bt info by fw!!\0A\00", align 1
@hal_coex_8723 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"[BTCoex] c2h for bt_info not rcvd yet!!\0A\00", align 1
@BT_COEX_MECH_COMMON = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Action 2-Ant common.\0A\00", align 1
@BTINFO_B_HID = common dso_local global i32 0, align 4
@BTINFO_B_SCO_BUSY = common dso_local global i32 0, align 4
@BTINFO_B_SCO_ESCO = common dso_local global i32 0, align 4
@BT_COEX_STATE_BTINFO_B_HID_SCOESCO = common dso_local global i32 0, align 4
@BT_COEX_MECH_HID_SCO_ESCO = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"[BTCoex], BTInfo: bHid|bSCOBusy|bSCOeSCO\0A\00", align 1
@BTINFO_B_FTP = common dso_local global i32 0, align 4
@BTINFO_B_A2DP = common dso_local global i32 0, align 4
@BT_COEX_STATE_BTINFO_B_FTP_A2DP = common dso_local global i32 0, align 4
@BT_COEX_MECH_FTP_A2DP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"BTInfo: bFTP|bA2DP\0A\00", align 1
@BT_COEX_MECH_NONE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"[BTCoex], BTInfo: undefined case!!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723e_dm_bt_coexist_2_ant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_dm_bt_coexist_2_ant(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = load i32, i32* @COMP_BT_COEXIST, align 4
  %9 = load i32, i32* @DBG_DMESG, align 4
  %10 = call i32 @RT_TRACE(%struct.rtl_priv* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @_rtl8723_dm_bt_check_wifi_state(%struct.ieee80211_hw* %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = load i32, i32* @COMP_BT_COEXIST, align 4
  %18 = load i32, i32* @DBG_TRACE, align 4
  %19 = call i32 @RT_TRACE(%struct.rtl_priv* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call i32 @rtl8723e_dm_bt_inq_page_monitor(%struct.ieee80211_hw* %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @rtl8723e_dm_bt_reset_action_profile_state(%struct.ieee80211_hw* %24)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call i64 @rtl8723e_dm_bt_is_2_ant_common_action(%struct.ieee80211_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load i8*, i8** @BT_COEX_MECH_COMMON, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** @BT_COEX_MECH_COMMON, align 8
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @COMP_BT_COEXIST, align 4
  %40 = load i32, i32* @DBG_DMESG, align 4
  %41 = call i32 @RT_TRACE(%struct.rtl_priv* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %132

42:                                               ; preds = %20
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BTINFO_B_HID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BTINFO_B_SCO_BUSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @BTINFO_B_SCO_ESCO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52, %47, %42
  %58 = load i32, i32* @BT_COEX_STATE_BTINFO_B_HID_SCOESCO, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 8
  %64 = load i8*, i8** @BT_COEX_MECH_HID_SCO_ESCO, align 8
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @BT_COEX_MECH_HID_SCO_ESCO, align 8
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = load i32, i32* @COMP_BT_COEXIST, align 4
  %74 = load i32, i32* @DBG_DMESG, align 4
  %75 = call i32 @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @rtl8723e_dm_bt_2_ant_hid_sco_esco(%struct.ieee80211_hw* %76)
  br label %131

78:                                               ; preds = %52
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BTINFO_B_FTP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @BTINFO_B_A2DP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @BT_COEX_STATE_BTINFO_B_FTP_A2DP, align 4
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 8
  %95 = load i8*, i8** @BT_COEX_MECH_FTP_A2DP, align 8
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** @BT_COEX_MECH_FTP_A2DP, align 8
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %101 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = load i32, i32* @COMP_BT_COEXIST, align 4
  %105 = load i32, i32* @DBG_DMESG, align 4
  %106 = call i32 @RT_TRACE(%struct.rtl_priv* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = call i32 @rtl8723e_dm_bt_2_ant_ftp_a2dp(%struct.ieee80211_hw* %107)
  br label %130

109:                                              ; preds = %83
  %110 = load i32, i32* @BT_COEX_STATE_BTINFO_B_HID_SCOESCO, align 4
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 8
  %116 = load i8*, i8** @BT_COEX_MECH_NONE, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** @BT_COEX_MECH_NONE, align 8
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %125 = load i32, i32* @COMP_BT_COEXIST, align 4
  %126 = load i32, i32* @DBG_DMESG, align 4
  %127 = call i32 @RT_TRACE(%struct.rtl_priv* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %129 = call i32 @rtl8723e_dm_bt_2_ant_hid_sco_esco(%struct.ieee80211_hw* %128)
  br label %130

130:                                              ; preds = %109, %88
  br label %131

131:                                              ; preds = %130, %57
  br label %132

132:                                              ; preds = %131, %29
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @_rtl8723_dm_bt_check_wifi_state(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_inq_page_monitor(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_reset_action_profile_state(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_is_2_ant_common_action(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_2_ant_hid_sco_esco(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_2_ant_ftp_a2dp(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
