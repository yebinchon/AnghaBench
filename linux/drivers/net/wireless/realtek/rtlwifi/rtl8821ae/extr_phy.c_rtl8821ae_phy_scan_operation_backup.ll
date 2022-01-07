; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_scan_operation_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_scan_operation_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_hal = type { i32 }

@IO_CMD_PAUSE_BAND0_DM_BY_SCAN = common dso_local global i32 0, align 4
@HW_VAR_IO_CMD = common dso_local global i32 0, align 4
@IO_CMD_PAUSE_BAND1_DM_BY_SCAN = common dso_local global i32 0, align 4
@IO_CMD_RESUME_DM_BY_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown Scan Backup operation.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_scan_operation_backup(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  %13 = load i32, i32* @IO_CMD_PAUSE_BAND0_DM_BY_SCAN, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %15 = call i32 @is_hal_stop(%struct.rtl_hal* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %55 [
    i32 130, label %19
    i32 129, label %31
    i32 128, label %43
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @IO_CMD_PAUSE_BAND0_DM_BY_SCAN, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %26, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load i32, i32* @HW_VAR_IO_CMD, align 4
  %30 = call i32 %27(%struct.ieee80211_hw* %28, i32 %29, i32* %7)
  br label %57

31:                                               ; preds = %17
  %32 = load i32, i32* @IO_CMD_PAUSE_BAND1_DM_BY_SCAN, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %38, align 8
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = load i32, i32* @HW_VAR_IO_CMD, align 4
  %42 = call i32 %39(%struct.ieee80211_hw* %40, i32 %41, i32* %7)
  br label %57

43:                                               ; preds = %17
  %44 = load i32, i32* @IO_CMD_RESUME_DM_BY_SCAN, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %50, align 8
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = load i32, i32* @HW_VAR_IO_CMD, align 4
  %54 = call i32 %51(%struct.ieee80211_hw* %52, i32 %53, i32* %7)
  br label %57

55:                                               ; preds = %17
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %43, %31, %19
  br label %58

58:                                               ; preds = %57, %2
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
