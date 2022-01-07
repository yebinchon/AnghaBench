; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_set_antennadiff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_rf.c__rtl92s_set_antennadiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_efuse = type { i32* }

@RF_2T2R = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Antenna Diff from RF-B to RF-A = %d (0x%x)\0A\00", align 1
@RFPGA0_TXGAINSTAGE = common dso_local global i32 0, align 4
@BXBTXAGC = common dso_local global i32 0, align 4
@BXCTXAGC = common dso_local global i32 0, align 4
@BXDTXAGC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Write BCD-Diff(0x%x) = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i8**)* @_rtl92s_set_antennadiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_set_antennadiff(%struct.ieee80211_hw* %0, i8** %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %6, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RF_2T2R, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %25 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 7
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 7, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, -8
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -8, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = load i32, i32* @COMP_POWER, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 15
  %47 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 15
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %40, %2
  %51 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %56 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %64 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  %67 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 4
  %79 = or i32 %72, %78
  %80 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %81 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %79, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %87 = load i32, i32* @RFPGA0_TXGAINSTAGE, align 4
  %88 = load i32, i32* @BXBTXAGC, align 4
  %89 = load i32, i32* @BXCTXAGC, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @BXDTXAGC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %86, i32 %87, i32 %92, i32 %93)
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %96 = load i32, i32* @COMP_POWER, align 4
  %97 = load i32, i32* @DBG_LOUD, align 4
  %98 = load i32, i32* @RFPGA0_TXGAINSTAGE, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
