; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_phy_rf_serial_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88e_phy_rf_serial_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@MASKDWORD = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"RFW-%d Addr[0x%x]=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl88e_phy_rf_serial_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88e_phy_rf_serial_write(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  %13 = alloca %struct.bb_reg_def*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %11, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  store %struct.rtl_phy* %17, %struct.rtl_phy** %12, align 8
  %18 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %19 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %18, i32 0, i32 0
  %20 = load %struct.bb_reg_def*, %struct.bb_reg_def** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %20, i64 %22
  store %struct.bb_reg_def* %23, %struct.bb_reg_def** %13, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = call i64 @RT_CANNOT_IO(%struct.ieee80211_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %55

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 20
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 1048575
  %37 = or i32 %34, %36
  %38 = and i32 %37, 268435455
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %40 = load %struct.bb_reg_def*, %struct.bb_reg_def** %13, align 8
  %41 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MASKDWORD, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %39, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %47 = load i32, i32* @COMP_RF, align 4
  %48 = load i32, i32* @DBG_TRACE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.bb_reg_def*, %struct.bb_reg_def** %13, align 8
  %51 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %29, %27
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @RT_CANNOT_IO(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
