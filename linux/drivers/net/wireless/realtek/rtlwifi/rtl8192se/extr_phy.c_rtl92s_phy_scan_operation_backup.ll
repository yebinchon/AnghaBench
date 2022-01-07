; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_scan_operation_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_scan_operation_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

@FW_CMD_PAUSE_DM_BY_SCAN = common dso_local global i32 0, align 4
@FW_CMD_RESUME_DM_BY_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown operation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_scan_operation_backup(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call i32 @rtl_priv(%struct.ieee80211_hw* %6)
  %8 = call %struct.rtl_hal* @rtl_hal(i32 %7)
  store %struct.rtl_hal* %8, %struct.rtl_hal** %5, align 8
  %9 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %10 = call i32 @is_hal_stop(%struct.rtl_hal* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 128, label %18
  ]

14:                                               ; preds = %12
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = load i32, i32* @FW_CMD_PAUSE_DM_BY_SCAN, align 4
  %17 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %15, i32 %16)
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = load i32, i32* @FW_CMD_RESUME_DM_BY_SCAN, align 4
  %21 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %19, i32 %20)
  br label %24

22:                                               ; preds = %12
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18, %14
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
