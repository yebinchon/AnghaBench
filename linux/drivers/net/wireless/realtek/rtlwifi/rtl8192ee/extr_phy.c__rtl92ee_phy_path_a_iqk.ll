; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_path_a_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_path_a_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RFPGA0_IQK = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RTX_IQK_TONE_A = common dso_local global i32 0, align 4
@RRX_IQK_TONE_A = common dso_local global i32 0, align 4
@RTX_IQK_TONE_B = common dso_local global i32 0, align 4
@RRX_IQK_TONE_B = common dso_local global i32 0, align 4
@RTX_IQK_PI_A = common dso_local global i32 0, align 4
@RRX_IQK_PI_A = common dso_local global i32 0, align 4
@RIQK_AGC_RSP = common dso_local global i32 0, align 4
@RIQK_AGC_PTS = common dso_local global i32 0, align 4
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92ee_phy_path_a_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_phy_path_a_iqk(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = load i32, i32* @RFPGA0_IQK, align 4
  %12 = load i32, i32* @MASKDWORD, align 4
  %13 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = load i32, i32* @RF90_PATH_A, align 4
  %16 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %17 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %14, i32 %15, i32 223, i32 %16, i32 384)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = load i32, i32* @RFPGA0_IQK, align 4
  %20 = load i32, i32* @MASKDWORD, align 4
  %21 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %18, i32 %19, i32 %20, i32 -2139095040)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %23 = load i32, i32* @RTX_IQK_TONE_A, align 4
  %24 = load i32, i32* @MASKDWORD, align 4
  %25 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %22, i32 %23, i32 %24, i32 402689052)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = load i32, i32* @RRX_IQK_TONE_A, align 4
  %28 = load i32, i32* @MASKDWORD, align 4
  %29 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %26, i32 %27, i32 %28, i32 939559964)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load i32, i32* @RTX_IQK_TONE_B, align 4
  %32 = load i32, i32* @MASKDWORD, align 4
  %33 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i32 939559964)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = load i32, i32* @RRX_IQK_TONE_B, align 4
  %36 = load i32, i32* @MASKDWORD, align 4
  %37 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %34, i32 %35, i32 %36, i32 939559964)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = load i32, i32* @RTX_IQK_PI_A, align 4
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %38, i32 %39, i32 %40, i32 -2112617725)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = load i32, i32* @RRX_IQK_PI_A, align 4
  %44 = load i32, i32* @MASKDWORD, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 1746272256)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %47 = load i32, i32* @RIQK_AGC_RSP, align 4
  %48 = load i32, i32* @MASKDWORD, align 4
  %49 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %46, i32 %47, i32 %48, i32 4598033)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %51 = load i32, i32* @RIQK_AGC_PTS, align 4
  %52 = load i32, i32* @MASKDWORD, align 4
  %53 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %50, i32 %51, i32 %52, i32 -117440512)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32, i32* @RIQK_AGC_PTS, align 4
  %56 = load i32, i32* @MASKDWORD, align 4
  %57 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i32 -134217728)
  %58 = load i32, i32* @IQK_DELAY_TIME, align 4
  %59 = call i32 @mdelay(i32 %58)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %61 = load i32, i32* @MASKDWORD, align 4
  %62 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %60, i32 3756, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = load i32, i32* @MASKDWORD, align 4
  %65 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %63, i32 3732, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %67 = load i32, i32* @MASKDWORD, align 4
  %68 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %66, i32 3740, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @BIT(i32 28)
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %2
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 67043328
  %76 = ashr i32 %75, 16
  %77 = icmp ne i32 %76, 322
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 67043328
  %81 = ashr i32 %80, 16
  %82 = icmp ne i32 %81, 66
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %88

86:                                               ; preds = %78, %73, %2
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
