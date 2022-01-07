; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_bw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_bw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i32 }

@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"FALSE driver sleep or unload\0A\00", align 1
@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Switch to %s bandwidth\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"20MHz\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"40MHz\00", align 1
@REG_BWOPMODE = common dso_local global i64 0, align 8
@REG_RRSR = common dso_local global i64 0, align 8
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BRFMOD = common dso_local global i32 0, align 4
@RFPGA1_RFMOD = common dso_local global i32 0, align 4
@RFPGA0_ANALOGPARAMETER2 = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@RCCK0_SYSTEM = common dso_local global i32 0, align 4
@BCCKSIDEBAND = common dso_local global i32 0, align 4
@ROFDM1_LSTF = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"<==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_set_bw_mode(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %185

27:                                               ; preds = %2
  %28 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %29 = call i64 @is_hal_stop(%struct.rtl_hal* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %33 = call i64 @RT_CANNOT_IO(%struct.ieee80211_hw* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %27
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %37 = load i32, i32* @COMP_ERR, align 4
  %38 = load i32, i32* @DBG_WARNING, align 4
  %39 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %185

40:                                               ; preds = %31
  %41 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %42 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = load i32, i32* @COMP_SCAN, align 4
  %45 = load i32, i32* @DBG_TRACE, align 4
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %47 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 129
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %54 = load i64, i64* @REG_BWOPMODE, align 8
  %55 = call i32 @rtl_read_byte(%struct.rtl_priv* %53, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %57 = load i64, i64* @REG_RRSR, align 8
  %58 = add nsw i64 %57, 2
  %59 = call i32 @rtl_read_byte(%struct.rtl_priv* %56, i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %61 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %92 [
    i32 129, label %63
    i32 128, label %71
  ]

63:                                               ; preds = %40
  %64 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %68 = load i64, i64* @REG_BWOPMODE, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @rtl_write_byte(%struct.rtl_priv* %67, i64 %68, i32 %69)
  br label %97

71:                                               ; preds = %40
  %72 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %77 = load i64, i64* @REG_BWOPMODE, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @rtl_write_byte(%struct.rtl_priv* %76, i64 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 144
  %82 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %83 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 5
  %86 = or i32 %81, %85
  store i32 %86, i32* %10, align 4
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %88 = load i64, i64* @REG_RRSR, align 8
  %89 = add nsw i64 %88, 2
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @rtl_write_byte(%struct.rtl_priv* %87, i64 %89, i32 %90)
  br label %97

92:                                               ; preds = %40
  %93 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %94 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %71, %63
  %98 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %99 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %168 [
    i32 129, label %101
    i32 128, label %116
  ]

101:                                              ; preds = %97
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = load i32, i32* @RFPGA0_RFMOD, align 4
  %104 = load i32, i32* @BRFMOD, align 4
  %105 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %102, i32 %103, i32 %104, i32 0)
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %107 = load i32, i32* @RFPGA1_RFMOD, align 4
  %108 = load i32, i32* @BRFMOD, align 4
  %109 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %106, i32 %107, i32 %108, i32 0)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %111 = load i32, i32* @RFPGA0_ANALOGPARAMETER2, align 4
  %112 = call i32 @BIT(i32 10)
  %113 = call i32 @BIT(i32 11)
  %114 = or i32 %112, %113
  %115 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %110, i32 %111, i32 %114, i32 3)
  br label %173

116:                                              ; preds = %97
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %118 = load i32, i32* @RFPGA0_RFMOD, align 4
  %119 = load i32, i32* @BRFMOD, align 4
  %120 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %117, i32 %118, i32 %119, i32 1)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %122 = load i32, i32* @RFPGA1_RFMOD, align 4
  %123 = load i32, i32* @BRFMOD, align 4
  %124 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %121, i32 %122, i32 %123, i32 1)
  %125 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %126 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @BAND_ON_2_4G, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %116
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %132 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %131, i64* %9)
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %134 = load i32, i32* @RCCK0_SYSTEM, align 4
  %135 = load i32, i32* @BCCKSIDEBAND, align 4
  %136 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %137 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 1
  %140 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %133, i32 %134, i32 %135, i32 %139)
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %142 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %141, i64* %9)
  br label %143

143:                                              ; preds = %130, %116
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %145 = load i32, i32* @ROFDM1_LSTF, align 4
  %146 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %147 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %144, i32 %145, i32 3072, i32 %148)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %151 = load i32, i32* @RFPGA0_ANALOGPARAMETER2, align 4
  %152 = call i32 @BIT(i32 10)
  %153 = call i32 @BIT(i32 11)
  %154 = or i32 %152, %153
  %155 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %150, i32 %151, i32 %154, i32 0)
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %157 = call i32 @BIT(i32 26)
  %158 = call i32 @BIT(i32 27)
  %159 = or i32 %157, %158
  %160 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %161 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 2, i32 1
  %167 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %156, i32 2072, i32 %159, i32 %166)
  br label %173

168:                                              ; preds = %97
  %169 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %170 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %143, %101
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %175 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %176 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @rtl92d_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %174, i32 %177)
  %179 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %180 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %179, i32 0, i32 0
  store i32 0, i32* %180, align 4
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %182 = load i32, i32* @COMP_SCAN, align 4
  %183 = load i32, i32* @DBG_TRACE, align 4
  %184 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %185

185:                                              ; preds = %173, %35, %26
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i64 @RT_CANNOT_IO(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @rtl92d_phy_rf6052_set_bandwidth(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
