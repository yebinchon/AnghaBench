; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_path_b_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_path_b_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RFPGA0_IQK = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RTX_IQK = common dso_local global i32 0, align 4
@RRX_IQK = common dso_local global i32 0, align 4
@RTX_IQK_TONE_A = common dso_local global i32 0, align 4
@RRX_IQK_TONE_A = common dso_local global i32 0, align 4
@RTX_IQK_TONE_B = common dso_local global i32 0, align 4
@RRX_IQK_TONE_B = common dso_local global i32 0, align 4
@RTX_IQK_PI_A = common dso_local global i32 0, align 4
@RRX_IQK_PI_A = common dso_local global i32 0, align 4
@RTX_IQK_PI_B = common dso_local global i32 0, align 4
@RRX_IQK_PI_B = common dso_local global i32 0, align 4
@RIQK_AGC_RSP = common dso_local global i32 0, align 4
@RIQK_AGC_PTS = common dso_local global i32 0, align 4
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@RRX_POWER_AFTER_IQK_A_2 = common dso_local global i32 0, align 4
@RTX_POWER_BEFORE_IQK_A = common dso_local global i32 0, align 4
@RTX_POWER_AFTER_IQK_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723be_phy_path_b_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_phy_path_b_iqk(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = load i32, i32* @RFPGA0_IQK, align 4
  %11 = load i32, i32* @MASKDWORD, align 4
  %12 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = load i32, i32* @MASKDWORD, align 4
  %15 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %13, i32 2376, i32 %14, i32 640)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @RF90_PATH_A, align 4
  %18 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %19 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %16, i32 %17, i32 237, i32 %18, i32 32)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = load i32, i32* @RF90_PATH_A, align 4
  %22 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %23 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %20, i32 %21, i32 67, i32 %22, i32 266177)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load i32, i32* @RTX_IQK, align 4
  %26 = load i32, i32* @MASKDWORD, align 4
  %27 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %24, i32 %25, i32 %26, i32 16808960)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load i32, i32* @RRX_IQK, align 4
  %30 = load i32, i32* @MASKDWORD, align 4
  %31 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %28, i32 %29, i32 %30, i32 16795648)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %33 = load i32, i32* @RTX_IQK_TONE_A, align 4
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %32, i32 %33, i32 %34, i32 402689052)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = load i32, i32* @RRX_IQK_TONE_A, align 4
  %38 = load i32, i32* @MASKDWORD, align 4
  %39 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i32 939559964)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = load i32, i32* @RTX_IQK_TONE_B, align 4
  %42 = load i32, i32* @MASKDWORD, align 4
  %43 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %40, i32 %41, i32 %42, i32 939559964)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %45 = load i32, i32* @RRX_IQK_TONE_B, align 4
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %44, i32 %45, i32 %46, i32 939559964)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i32, i32* @RTX_IQK_PI_A, align 4
  %50 = load i32, i32* @MASKDWORD, align 4
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i32 -2112617494)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = load i32, i32* @RRX_IQK_PI_A, align 4
  %54 = load i32, i32* @MASKDWORD, align 4
  %55 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 %54, i32 672202752)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load i32, i32* @RTX_IQK_PI_B, align 4
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %56, i32 %57, i32 %58, i32 -2112815104)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = load i32, i32* @RRX_IQK_PI_B, align 4
  %62 = load i32, i32* @MASKDWORD, align 4
  %63 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i32 672202752)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %65 = load i32, i32* @RIQK_AGC_RSP, align 4
  %66 = load i32, i32* @MASKDWORD, align 4
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %64, i32 %65, i32 %66, i32 4598033)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %69 = load i32, i32* @RFPGA0_IQK, align 4
  %70 = load i32, i32* @MASKDWORD, align 4
  %71 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 %70, i32 -2139095040)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = load i32, i32* @RIQK_AGC_PTS, align 4
  %74 = load i32, i32* @MASKDWORD, align 4
  %75 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74, i32 -117440512)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = load i32, i32* @RIQK_AGC_PTS, align 4
  %78 = load i32, i32* @MASKDWORD, align 4
  %79 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %76, i32 %77, i32 %78, i32 -134217728)
  %80 = load i32, i32* @IQK_DELAY_TIME, align 4
  %81 = call i32 @mdelay(i32 %80)
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %83 = load i32, i32* @RFPGA0_IQK, align 4
  %84 = load i32, i32* @MASKDWORD, align 4
  %85 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %87 = load i32, i32* @RRX_POWER_AFTER_IQK_A_2, align 4
  %88 = load i32, i32* @MASKDWORD, align 4
  %89 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %91 = load i32, i32* @RTX_POWER_BEFORE_IQK_A, align 4
  %92 = load i32, i32* @MASKDWORD, align 4
  %93 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load i32, i32* @RTX_POWER_AFTER_IQK_A, align 4
  %96 = load i32, i32* @MASKDWORD, align 4
  %97 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @BIT(i32 28)
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %1
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, 67043328
  %105 = ashr i32 %104, 16
  %106 = icmp ne i32 %105, 322
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 67043328
  %110 = ashr i32 %109, 16
  %111 = icmp ne i32 %110, 66
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %117

115:                                              ; preds = %107, %102, %1
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %152

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, 67043328
  %120 = ashr i32 %119, 16
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, 512
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 1024, %125
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %117
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @BIT(i32 28)
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 67043328
  %135 = ashr i32 %134, 16
  %136 = icmp slt i32 %135, 272
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 67043328
  %140 = ashr i32 %139, 16
  %141 = icmp sgt i32 %140, 240
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 15
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %150

148:                                              ; preds = %142, %137, %132, %127
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %148, %115
  %153 = load i32, i32* %2, align 4
  ret i32 %153
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
