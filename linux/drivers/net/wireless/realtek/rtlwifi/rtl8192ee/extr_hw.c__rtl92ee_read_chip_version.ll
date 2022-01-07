; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_read_chip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_read_chip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@VERSION_UNKNOWN = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i64 0, align 8
@REG_SYS_CFG1 = common dso_local global i32 0, align 4
@TRP_VAUX_EN = common dso_local global i32 0, align 4
@VERSION_TEST_CHIP_2T2R_8192E = common dso_local global i64 0, align 8
@VERSION_NORMAL_CHIP_2T2R_8192E = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chip RF Type: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RF_2T2R\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RF_1T1R\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92ee_read_chip_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_read_chip_version(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  %11 = load i32, i32* @VERSION_UNKNOWN, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* @RF_2T2R, align 8
  %13 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @REG_SYS_CFG1, align 4
  %17 = call i32 @rtl_read_dword(%struct.rtl_priv* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TRP_VAUX_EN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i64, i64* @VERSION_TEST_CHIP_2T2R_8192E, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i64, i64* @VERSION_NORMAL_CHIP_2T2R_8192E, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i32, i32* @COMP_INIT, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RF_2T2R, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %39 = call i32 @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
