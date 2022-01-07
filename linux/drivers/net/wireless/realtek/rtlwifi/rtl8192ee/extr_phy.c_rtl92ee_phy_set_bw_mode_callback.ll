; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_set_bw_mode_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_set_bw_mode_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Switch to %s bandwidth\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"20MHz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"40MHz\00", align 1
@REG_BWOPMODE = common dso_local global i64 0, align 8
@REG_RRSR = common dso_local global i64 0, align 8
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BRFMOD = common dso_local global i32 0, align 4
@RFPGA1_RFMOD = common dso_local global i32 0, align 4
@ROFDM0_TXPSEUDONOISEWGT = common dso_local global i32 0, align 4
@RCCK0_SYSTEM = common dso_local global i32 0, align 4
@BCCK_SIDEBAND = common dso_local global i32 0, align 4
@ROFDM1_LSTF = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_phy_set_bw_mode_callback(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %6, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @COMP_SCAN, align 4
  %21 = load i32, i32* @DBG_TRACE, align 4
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 129
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %30 = call i64 @is_hal_stop(%struct.rtl_hal* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %151

35:                                               ; preds = %1
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i64, i64* @REG_BWOPMODE, align 8
  %38 = call i32 @rtl_read_byte(%struct.rtl_priv* %36, i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = load i64, i64* @REG_RRSR, align 8
  %41 = add nsw i64 %40, 2
  %42 = call i32 @rtl_read_byte(%struct.rtl_priv* %39, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %44 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %75 [
    i32 129, label %46
    i32 128, label %54
  ]

46:                                               ; preds = %35
  %47 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = load i64, i64* @REG_BWOPMODE, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rtl_write_byte(%struct.rtl_priv* %50, i64 %51, i32 %52)
  br label %80

54:                                               ; preds = %35
  %55 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i64, i64* @REG_BWOPMODE, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @rtl_write_byte(%struct.rtl_priv* %59, i64 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 144
  %65 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %66 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 5
  %69 = or i32 %64, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i64, i64* @REG_RRSR, align 8
  %72 = add nsw i64 %71, 2
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @rtl_write_byte(%struct.rtl_priv* %70, i64 %72, i32 %73)
  br label %80

75:                                               ; preds = %35
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %54, %46
  %81 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %82 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %134 [
    i32 129, label %84
    i32 128, label %99
  ]

84:                                               ; preds = %80
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %86 = load i32, i32* @RFPGA0_RFMOD, align 4
  %87 = load i32, i32* @BRFMOD, align 4
  %88 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %90 = load i32, i32* @RFPGA1_RFMOD, align 4
  %91 = load i32, i32* @BRFMOD, align 4
  %92 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = load i32, i32* @ROFDM0_TXPSEUDONOISEWGT, align 4
  %95 = call i32 @BIT(i32 31)
  %96 = call i32 @BIT(i32 30)
  %97 = or i32 %95, %96
  %98 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %93, i32 %94, i32 %97, i32 0)
  br label %139

99:                                               ; preds = %80
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = load i32, i32* @RFPGA0_RFMOD, align 4
  %102 = load i32, i32* @BRFMOD, align 4
  %103 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %100, i32 %101, i32 %102, i32 1)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = load i32, i32* @RFPGA1_RFMOD, align 4
  %106 = load i32, i32* @BRFMOD, align 4
  %107 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %104, i32 %105, i32 %106, i32 1)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %109 = load i32, i32* @RCCK0_SYSTEM, align 4
  %110 = load i32, i32* @BCCK_SIDEBAND, align 4
  %111 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %112 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 1
  %115 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i32 %114)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load i32, i32* @ROFDM1_LSTF, align 4
  %118 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %119 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %116, i32 %117, i32 3072, i32 %120)
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %123 = call i32 @BIT(i32 26)
  %124 = call i32 @BIT(i32 27)
  %125 = or i32 %123, %124
  %126 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %127 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 2, i32 1
  %133 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %122, i32 2072, i32 %125, i32 %132)
  br label %139

134:                                              ; preds = %80
  %135 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %136 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %134, %99, %84
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @rtl92ee_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %140, i32 %143)
  %145 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %146 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %148 = load i32, i32* @COMP_SCAN, align 4
  %149 = load i32, i32* @DBG_LOUD, align 4
  %150 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %139, %32
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl92ee_phy_rf6052_set_bandwidth(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
