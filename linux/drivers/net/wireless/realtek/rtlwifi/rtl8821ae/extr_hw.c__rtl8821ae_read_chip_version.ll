; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_chip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_read_chip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_hal = type { i64, i32 }

@VERSION_UNKNOWN = common dso_local global i32 0, align 4
@REG_SYS_CFG = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ReadChipVersion8812A 0xF0 = 0x%x\0A\00", align 1
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"RF_Type is %x!!\0A\00", align 1
@TRP_VAUX_EN = common dso_local global i32 0, align 4
@CHIP_VER_RTL_MASK = common dso_local global i32 0, align 4
@CHIP_8812 = common dso_local global i32 0, align 4
@NORMAL_CHIP = common dso_local global i32 0, align 4
@RF_TYPE_2T2R = common dso_local global i32 0, align 4
@CHIP_8821 = common dso_local global i32 0, align 4
@REG_MULTI_FUNC_CTRL = common dso_local global i32 0, align 4
@WL_HWROF_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Chip Version ID: VERSION_TEST_CHIP_1T1R_8812\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Chip Version ID: VERSION_TEST_CHIP_2T2R_8812\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Chip Version ID:VERSION_NORMAL_TSMC_CHIP_1T1R_8812\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Chip Version ID: VERSION_NORMAL_TSMC_CHIP_2T2R_8812\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Chip Version ID: VERSION_NORMAL_TSMC_CHIP_1T1R_8812 C CUT\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Chip Version ID: VERSION_NORMAL_TSMC_CHIP_2T2R_8812 C CUT\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Chip Version ID: VERSION_TEST_CHIP_8821\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Chip Version ID: VERSION_NORMAL_TSMC_CHIP_8821 A CUT\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Chip Version ID: VERSION_NORMAL_TSMC_CHIP_8821 B CUT\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Chip Version ID: Unknown (0x%X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8821ae_read_chip_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_read_chip_version(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %5, align 8
  %17 = load i32, i32* @VERSION_UNKNOWN, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i32, i32* @REG_SYS_CFG, align 4
  %20 = call i32 @rtl_read_dword(%struct.rtl_priv* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @COMP_INIT, align 4
  %23 = load i32, i32* @DBG_LOUD, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i64, i64* @RF_2T2R, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @RF_1T1R, align 4
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = load i32, i32* @COMP_INIT, align 4
  %50 = load i32, i32* @DBG_LOUD, align 4
  %51 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TRP_VAUX_EN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %47
  %60 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %61 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @RF_2T2R, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 129, i32* %6, align 4
  br label %74

73:                                               ; preds = %65
  store i32 130, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %76

75:                                               ; preds = %59
  store i32 128, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %127

77:                                               ; preds = %47
  %78 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %79 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 12
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %90 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @RF_2T2R, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* @CHIP_8812, align 4
  %97 = load i32, i32* @NORMAL_CHIP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RF_TYPE_2T2R, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %6, align 4
  br label %105

101:                                              ; preds = %83
  %102 = load i32, i32* @CHIP_8812, align 4
  %103 = load i32, i32* @NORMAL_CHIP, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 %107, 12
  %109 = or i32 %106, %108
  store i32 %109, i32* %6, align 4
  br label %126

110:                                              ; preds = %77
  %111 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %112 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @CHIP_VER_RTL_MASK, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* @CHIP_8821, align 4
  %121 = load i32, i32* @NORMAL_CHIP, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %116, %110
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %76
  %128 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %129 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %135 = load i32, i32* @REG_MULTI_FUNC_CTRL, align 4
  %136 = call i32 @rtl_read_dword(%struct.rtl_priv* %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @WL_HWROF_EN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %144 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %133, %127
  %146 = load i32, i32* %6, align 4
  switch i32 %146, label %192 [
    i32 130, label %147
    i32 129, label %152
    i32 136, label %157
    i32 134, label %162
    i32 135, label %167
    i32 133, label %172
    i32 128, label %177
    i32 132, label %182
    i32 131, label %187
  ]

147:                                              ; preds = %145
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %149 = load i32, i32* @COMP_INIT, align 4
  %150 = load i32, i32* @DBG_LOUD, align 4
  %151 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %198

152:                                              ; preds = %145
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %154 = load i32, i32* @COMP_INIT, align 4
  %155 = load i32, i32* @DBG_LOUD, align 4
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %198

157:                                              ; preds = %145
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %159 = load i32, i32* @COMP_INIT, align 4
  %160 = load i32, i32* @DBG_LOUD, align 4
  %161 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %158, i32 %159, i32 %160, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %198

162:                                              ; preds = %145
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %164 = load i32, i32* @COMP_INIT, align 4
  %165 = load i32, i32* @DBG_LOUD, align 4
  %166 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %198

167:                                              ; preds = %145
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %169 = load i32, i32* @COMP_INIT, align 4
  %170 = load i32, i32* @DBG_LOUD, align 4
  %171 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %198

172:                                              ; preds = %145
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %174 = load i32, i32* @COMP_INIT, align 4
  %175 = load i32, i32* @DBG_LOUD, align 4
  %176 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  br label %198

177:                                              ; preds = %145
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = load i32, i32* @COMP_INIT, align 4
  %180 = load i32, i32* @DBG_LOUD, align 4
  %181 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %178, i32 %179, i32 %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %198

182:                                              ; preds = %145
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = load i32, i32* @COMP_INIT, align 4
  %185 = load i32, i32* @DBG_LOUD, align 4
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  br label %198

187:                                              ; preds = %145
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %189 = load i32, i32* @COMP_INIT, align 4
  %190 = load i32, i32* @DBG_LOUD, align 4
  %191 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %188, i32 %189, i32 %190, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  br label %198

192:                                              ; preds = %145
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %194 = load i32, i32* @COMP_INIT, align 4
  %195 = load i32, i32* @DBG_LOUD, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %192, %187, %182, %177, %172, %167, %162, %157, %152, %147
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
