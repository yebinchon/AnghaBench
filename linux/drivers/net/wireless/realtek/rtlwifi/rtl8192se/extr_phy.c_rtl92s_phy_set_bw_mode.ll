; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_bw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_bw_mode.c"
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
@BW_OPMODE = common dso_local global i64 0, align 8
@RRSR = common dso_local global i64 0, align 8
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BRFMOD = common dso_local global i32 0, align 4
@RFPGA1_RFMOD = common dso_local global i32 0, align 4
@VERSION_8192S_BCUT = common dso_local global i32 0, align 4
@RFPGA0_ANALOGPARAMETER2 = common dso_local global i64 0, align 8
@RCCK0_SYSTEM = common dso_local global i32 0, align 4
@BCCK_SIDEBAND = common dso_local global i32 0, align 4
@ROFDM1_LSTF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"<==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_set_bw_mode(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %6, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %7, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %18)
  store %struct.rtl_mac* %19, %struct.rtl_mac** %8, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %21 = load i32, i32* @COMP_SCAN, align 4
  %22 = load i32, i32* @DBG_TRACE, align 4
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 129
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %31 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %148

35:                                               ; preds = %2
  %36 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %37 = call i64 @is_hal_stop(%struct.rtl_hal* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %148

40:                                               ; preds = %35
  %41 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %42 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = load i64, i64* @BW_OPMODE, align 8
  %45 = call i32 @rtl_read_byte(%struct.rtl_priv* %43, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %47 = load i64, i64* @RRSR, align 8
  %48 = add nsw i64 %47, 2
  %49 = call i32 @rtl_read_byte(%struct.rtl_priv* %46, i64 %48)
  %50 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %51 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %70 [
    i32 129, label %53
    i32 128, label %61
  ]

53:                                               ; preds = %40
  %54 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = load i64, i64* @BW_OPMODE, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @rtl_write_byte(%struct.rtl_priv* %57, i64 %58, i32 %59)
  br label %75

61:                                               ; preds = %40
  %62 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %67 = load i64, i64* @BW_OPMODE, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @rtl_write_byte(%struct.rtl_priv* %66, i64 %67, i32 %68)
  br label %75

70:                                               ; preds = %40
  %71 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %72 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %61, %53
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %131 [
    i32 129, label %79
    i32 128, label %98
  ]

79:                                               ; preds = %75
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %81 = load i32, i32* @RFPGA0_RFMOD, align 4
  %82 = load i32, i32* @BRFMOD, align 4
  %83 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = load i32, i32* @RFPGA1_RFMOD, align 4
  %86 = load i32, i32* @BRFMOD, align 4
  %87 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 %86, i32 0)
  %88 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %89 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @VERSION_8192S_BCUT, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %95 = load i64, i64* @RFPGA0_ANALOGPARAMETER2, align 8
  %96 = call i32 @rtl_write_byte(%struct.rtl_priv* %94, i64 %95, i32 88)
  br label %97

97:                                               ; preds = %93, %79
  br label %136

98:                                               ; preds = %75
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = load i32, i32* @RFPGA0_RFMOD, align 4
  %101 = load i32, i32* @BRFMOD, align 4
  %102 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %99, i32 %100, i32 %101, i32 1)
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %104 = load i32, i32* @RFPGA1_RFMOD, align 4
  %105 = load i32, i32* @BRFMOD, align 4
  %106 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %103, i32 %104, i32 %105, i32 1)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = load i32, i32* @RCCK0_SYSTEM, align 4
  %109 = load i32, i32* @BCCK_SIDEBAND, align 4
  %110 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %111 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 1
  %114 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %107, i32 %108, i32 %109, i32 %113)
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %116 = load i32, i32* @ROFDM1_LSTF, align 4
  %117 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %118 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %115, i32 %116, i32 3072, i32 %119)
  %121 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %122 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @VERSION_8192S_BCUT, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %98
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %128 = load i64, i64* @RFPGA0_ANALOGPARAMETER2, align 8
  %129 = call i32 @rtl_write_byte(%struct.rtl_priv* %127, i64 %128, i32 24)
  br label %130

130:                                              ; preds = %126, %98
  br label %136

131:                                              ; preds = %75
  %132 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %133 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %131, %130, %97
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %139 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @rtl92s_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %137, i32 %140)
  %142 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %143 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %145 = load i32, i32* @COMP_SCAN, align 4
  %146 = load i32, i32* @DBG_TRACE, align 4
  %147 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %144, i32 %145, i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %148

148:                                              ; preds = %136, %39, %34
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

declare dso_local i32 @rtl92s_phy_rf6052_set_bandwidth(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
