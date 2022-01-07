; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_read_chip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_read_chip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@VERSION_UNKNOWN = common dso_local global i32 0, align 4
@REG_SYS_CFG = common dso_local global i32 0, align 4
@TRP_VAUX_EN = common dso_local global i32 0, align 4
@VERSION_TEST_CHIP_88E = common dso_local global i64 0, align 8
@NORMAL_CHIP = common dso_local global i32 0, align 4
@TYPE_ID = common dso_local global i32 0, align 4
@RF_TYPE_2T2R = common dso_local global i32 0, align 4
@VENDOR_ID = common dso_local global i32 0, align 4
@CHIP_VENDOR_UMC = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chip RF Type: %s\0A\00", align 1
@RF_2T2R = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"RF_2T2R\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RF_1T1R\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl88ee_read_chip_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88ee_read_chip_version(%struct.ieee80211_hw* %0) #0 {
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
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i32, i32* @REG_SYS_CFG, align 4
  %14 = call i32 @rtl_read_dword(%struct.rtl_priv* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TRP_VAUX_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i64, i64* @VERSION_TEST_CHIP_88E, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load i32, i32* @NORMAL_CHIP, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TYPE_ID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @RF_TYPE_2T2R, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %24, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @VENDOR_ID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @CHIP_VENDOR_UMC, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %35, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %19
  %47 = load i64, i64* @RF_1T1R, align 8
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = load i32, i32* @COMP_INIT, align 4
  %52 = load i32, i32* @DBG_LOUD, align 4
  %53 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %54 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RF_2T2R, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @RT_TRACE(%struct.rtl_priv* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
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
