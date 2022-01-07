; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_path_a_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_path_a_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RFPGA0_IQK = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_WE_LUT = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RF_RCK_OS = common dso_local global i32 0, align 4
@RF_TXPA_G1 = common dso_local global i32 0, align 4
@RF_TXPA_G2 = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723be_phy_path_a_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_phy_path_a_iqk(%struct.ieee80211_hw* %0) #0 {
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
  %15 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %13, i32 2376, i32 %14, i32 0)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @RF90_PATH_A, align 4
  %18 = load i32, i32* @RF_WE_LUT, align 4
  %19 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %20 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %16, i32 %17, i32 %18, i32 %19, i32 524448)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = load i32, i32* @RF90_PATH_A, align 4
  %23 = load i32, i32* @RF_RCK_OS, align 4
  %24 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %25 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %21, i32 %22, i32 %23, i32 %24, i32 131072)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = load i32, i32* @RF90_PATH_A, align 4
  %28 = load i32, i32* @RF_TXPA_G1, align 4
  %29 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %30 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %26, i32 %27, i32 %28, i32 %29, i32 63)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load i32, i32* @RF90_PATH_A, align 4
  %33 = load i32, i32* @RF_TXPA_G2, align 4
  %34 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %35 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %31, i32 %32, i32 %33, i32 %34, i32 819079)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = load i32, i32* @RTX_IQK, align 4
  %38 = load i32, i32* @MASKDWORD, align 4
  %39 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i32 16808960)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = load i32, i32* @RRX_IQK, align 4
  %42 = load i32, i32* @MASKDWORD, align 4
  %43 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %40, i32 %41, i32 %42, i32 16795648)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %45 = load i32, i32* @RTX_IQK_TONE_A, align 4
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %44, i32 %45, i32 %46, i32 402689052)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i32, i32* @RRX_IQK_TONE_A, align 4
  %50 = load i32, i32* @MASKDWORD, align 4
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i32 939559964)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = load i32, i32* @RTX_IQK_TONE_B, align 4
  %54 = load i32, i32* @MASKDWORD, align 4
  %55 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 %54, i32 939559964)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load i32, i32* @RRX_IQK_TONE_B, align 4
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %56, i32 %57, i32 %58, i32 939559964)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = load i32, i32* @RTX_IQK_PI_A, align 4
  %62 = load i32, i32* @MASKDWORD, align 4
  %63 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i32 -2112617494)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %65 = load i32, i32* @RRX_IQK_PI_A, align 4
  %66 = load i32, i32* @MASKDWORD, align 4
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %64, i32 %65, i32 %66, i32 672530432)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %69 = load i32, i32* @RTX_IQK_PI_B, align 4
  %70 = load i32, i32* @MASKDWORD, align 4
  %71 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 %70, i32 -2112815104)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = load i32, i32* @RRX_IQK_PI_B, align 4
  %74 = load i32, i32* @MASKDWORD, align 4
  %75 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74, i32 672202752)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = load i32, i32* @RIQK_AGC_RSP, align 4
  %78 = load i32, i32* @MASKDWORD, align 4
  %79 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %76, i32 %77, i32 %78, i32 4598033)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %81 = load i32, i32* @RFPGA0_IQK, align 4
  %82 = load i32, i32* @MASKDWORD, align 4
  %83 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %80, i32 %81, i32 %82, i32 -2139095040)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = load i32, i32* @RIQK_AGC_PTS, align 4
  %86 = load i32, i32* @MASKDWORD, align 4
  %87 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 %86, i32 -117440512)
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = load i32, i32* @RIQK_AGC_PTS, align 4
  %90 = load i32, i32* @MASKDWORD, align 4
  %91 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %88, i32 %89, i32 %90, i32 -134217728)
  %92 = load i32, i32* @IQK_DELAY_TIME, align 4
  %93 = call i32 @mdelay(i32 %92)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load i32, i32* @RFPGA0_IQK, align 4
  %96 = load i32, i32* @MASKDWORD, align 4
  %97 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %99 = load i32, i32* @MASKDWORD, align 4
  %100 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %98, i32 3756, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %102 = load i32, i32* @MASKDWORD, align 4
  %103 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %101, i32 3732, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %105 = load i32, i32* @MASKDWORD, align 4
  %106 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %104, i32 3740, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @BIT(i32 28)
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %1
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 67043328
  %114 = ashr i32 %113, 16
  %115 = icmp ne i32 %114, 322
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 67043328
  %119 = ashr i32 %118, 16
  %120 = icmp ne i32 %119, 66
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %126

124:                                              ; preds = %116, %111, %1
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %161

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 67043328
  %129 = ashr i32 %128, 16
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = and i32 %130, 512
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 1024, %134
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %133, %126
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @BIT(i32 28)
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, 67043328
  %144 = ashr i32 %143, 16
  %145 = icmp slt i32 %144, 272
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, 67043328
  %149 = ashr i32 %148, 16
  %150 = icmp sgt i32 %149, 240
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 15
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %159

157:                                              ; preds = %151, %146, %141, %136
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %159, %157, %124
  %162 = load i32, i32* %2, align 4
  ret i32 %162
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
