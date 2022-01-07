; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_path_b_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_path_b_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RFPGA0_IQK = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RTX_IQK_TONE_A = common dso_local global i32 0, align 4
@RRX_IQK_TONE_A = common dso_local global i32 0, align 4
@RTX_IQK_TONE_B = common dso_local global i32 0, align 4
@RRX_IQK_TONE_B = common dso_local global i32 0, align 4
@RTX_IQK_PI_B = common dso_local global i32 0, align 4
@RRX_IQK_PI_B = common dso_local global i32 0, align 4
@RIQK_AGC_RSP = common dso_local global i32 0, align 4
@RIQK_AGC_PTS = common dso_local global i32 0, align 4
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92ee_phy_path_b_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_phy_path_b_iqk(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = load i32, i32* @RFPGA0_IQK, align 4
  %10 = load i32, i32* @MASKDWORD, align 4
  %11 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %8, i32 %9, i32 %10, i32 0)
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = load i32, i32* @RF90_PATH_B, align 4
  %14 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %15 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %12, i32 %13, i32 223, i32 %14, i32 384)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @RFPGA0_IQK, align 4
  %18 = load i32, i32* @MASKDWORD, align 4
  %19 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %16, i32 %17, i32 %18, i32 -2139095040)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = load i32, i32* @MASKDWORD, align 4
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %20, i32 3624, i32 %21, i32 0)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = load i32, i32* @MASKDWORD, align 4
  %25 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %23, i32 3624, i32 %24, i32 -2139095040)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = load i32, i32* @RTX_IQK_TONE_A, align 4
  %28 = load i32, i32* @MASKDWORD, align 4
  %29 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %26, i32 %27, i32 %28, i32 939559964)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load i32, i32* @RRX_IQK_TONE_A, align 4
  %32 = load i32, i32* @MASKDWORD, align 4
  %33 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i32 939559964)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = load i32, i32* @RTX_IQK_TONE_B, align 4
  %36 = load i32, i32* @MASKDWORD, align 4
  %37 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %34, i32 %35, i32 %36, i32 402689052)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* @RRX_IQK_TONE_B, align 4
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %38, i32 %39, i32 %40, i32 939559964)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* @RTX_IQK_PI_B, align 4
  %44 = load i32, i32* @MASKDWORD, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 -2112617502)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32, i32* @RRX_IQK_PI_B, align 4
  %48 = load i32, i32* @MASKDWORD, align 4
  %49 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %46, i32 %47, i32 %48, i32 1746272256)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = load i32, i32* @RIQK_AGC_RSP, align 4
  %52 = load i32, i32* @MASKDWORD, align 4
  %53 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %50, i32 %51, i32 %52, i32 4598033)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %55 = load i32, i32* @RIQK_AGC_PTS, align 4
  %56 = load i32, i32* @MASKDWORD, align 4
  %57 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i32 -100663296)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %59 = load i32, i32* @RIQK_AGC_PTS, align 4
  %60 = load i32, i32* @MASKDWORD, align 4
  %61 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %58, i32 %59, i32 %60, i32 -134217728)
  %62 = load i32, i32* @IQK_DELAY_TIME, align 4
  %63 = call i32 @mdelay(i32 %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %65 = load i32, i32* @MASKDWORD, align 4
  %66 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %64, i32 3756, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = load i32, i32* @MASKDWORD, align 4
  %69 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %67, i32 3764, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i32, i32* @MASKDWORD, align 4
  %72 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %70, i32 3772, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @BIT(i32 31)
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 67043328
  %80 = ashr i32 %79, 16
  %81 = icmp ne i32 %80, 322
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 67043328
  %85 = ashr i32 %84, 16
  %86 = icmp ne i32 %85, 66
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %92

90:                                               ; preds = %82, %77, %1
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i32, i32* %2, align 4
  ret i32 %95
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
