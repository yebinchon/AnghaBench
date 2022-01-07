; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dig_t = type { i32, i32 }
%struct.rtl_hal = type { i32, i32 }
%struct.rtl_efuse = type { i32* }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Set FW Cmd(%#x), set_fwcmd_inprogress(%d)\0A\00", align 1
@FW_CMD_CTRL_DM_BY_DRIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"RA init!!\0A\00", align 1
@FW_RA_INIT_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Set DIG disable!!\0A\00", align 1
@FW_DIG_ENABLE_CTL = common dso_local global i32 0, align 4
@HAL_DM_DIG_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Set DIG enable or resume!!\0A\00", align 1
@FW_SS_CTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Set DIG halt!!\0A\00", align 1
@FW_PWR_TRK_CTL = common dso_local global i32 0, align 4
@FW_PWR_TRK_PARAM_CLR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Set TxPwr tracking!! FwCmdMap(%#x), FwParam(%#x)\0A\00", align 1
@FW_RA_N_CTL = common dso_local global i32 0, align 4
@FW_RA_BG_CTL = common dso_local global i32 0, align 4
@FW_RA_PARAM_CLR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [80 x i8] c"[FW CMD] [New Version] Set RA/IOT Comb in n mode!! FwCmdMap(%#x), FwParam(%#x)\0A\00", align 1
@FW_IQK_CTL = common dso_local global i32 0, align 4
@FW_DRIVER_CTRL_DM_CTL = common dso_local global i32 0, align 4
@FW_HIGH_PWR_ENABLE_CTL = common dso_local global i32 0, align 4
@HAL_DM_HIPWR_DISABLE = common dso_local global i32 0, align 4
@DIG_EXT_PORT_STAGE_0 = common dso_local global i32 0, align 4
@DIG_EXT_PORT_STAGE_1 = common dso_local global i32 0, align 4
@FW_FA_CTL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"[FW CMD] Set PAPE Control\0A\00", align 1
@FW_PAPE_CTL_BY_SW_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.dig_t*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca %struct.rtl_efuse*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %6, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 1
  store %struct.dig_t* %17, %struct.dig_t** %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %8, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %22)
  store %struct.rtl_efuse* %23, %struct.rtl_efuse** %9, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %25 = call i32 @FW_CMD_IO_PARA_QUERY(%struct.rtl_priv* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %27 = call i32 @FW_CMD_IO_QUERY(%struct.rtl_priv* %26)
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %29 = load i32, i32* @COMP_CMD, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %33 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %2
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %38 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %37)
  %39 = icmp sge i32 %38, 53
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %44 [
    i32 131, label %42
    i32 133, label %43
  ]

42:                                               ; preds = %40
  store i32 130, i32* %5, align 4
  br label %45

43:                                               ; preds = %40
  store i32 132, i32* %5, align 4
  br label %45

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %43, %42
  br label %57

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 137
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 131
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 133
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49, %46
  store i32 1, i32* %12, align 4
  br label %373

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %59 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %58)
  %60 = icmp sge i32 %59, 62
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FW_CMD_CTRL_DM_BY_DRIVER, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 146, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %371 [
    i32 134, label %69
    i32 145, label %83
    i32 144, label %95
    i32 140, label %95
    i32 143, label %117
    i32 128, label %131
    i32 130, label %168
    i32 132, label %196
    i32 137, label %218
    i32 146, label %228
    i32 129, label %235
    i32 135, label %300
    i32 139, label %312
    i32 138, label %320
    i32 142, label %344
    i32 141, label %351
    i32 136, label %359
  ]

69:                                               ; preds = %67
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %71 = load i32, i32* @COMP_CMD, align 4
  %72 = load i32, i32* @DBG_LOUD, align 4
  %73 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @FW_RA_INIT_CTL, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %77, i32 %78)
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %81 = load i32, i32* @FW_RA_INIT_CTL, align 4
  %82 = call i32 @FW_CMD_IO_CLR(%struct.rtl_priv* %80, i32 %81)
  br label %372

83:                                               ; preds = %67
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %85 = load i32, i32* @COMP_CMD, align 4
  %86 = load i32, i32* @DBG_LOUD, align 4
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %92, i32 %93)
  br label %372

95:                                               ; preds = %67, %67
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @HAL_DM_DIG_DISABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %95
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %105 = load i32, i32* @COMP_CMD, align 4
  %106 = load i32, i32* @DBG_LOUD, align 4
  %107 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %109 = load i32, i32* @FW_SS_CTL, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %113, i32 %114)
  br label %116

116:                                              ; preds = %103, %95
  br label %372

117:                                              ; preds = %67
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %119 = load i32, i32* @COMP_CMD, align 4
  %120 = load i32, i32* @DBG_LOUD, align 4
  %121 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %123 = load i32, i32* @FW_SS_CTL, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %128, i32 %129)
  br label %372

131:                                              ; preds = %67
  store i32 0, i32* %13, align 4
  %132 = load i32, i32* @FW_PWR_TRK_CTL, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @FW_PWR_TRK_PARAM_CLR, align 4
  %136 = load i32, i32* %10, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = shl i32 %142, 24
  %144 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %145 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 16
  %150 = or i32 %143, %149
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %10, align 4
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %154 = load i32, i32* @COMP_CMD, align 4
  %155 = load i32, i32* @DBG_LOUD, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @FW_CMD_PARA_SET(%struct.rtl_priv* %159, i32 %160)
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %162, i32 %163)
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %166 = load i32, i32* @FW_PWR_TRK_CTL, align 4
  %167 = call i32 @FW_CMD_IO_CLR(%struct.rtl_priv* %165, i32 %166)
  br label %372

168:                                              ; preds = %67
  %169 = load i32, i32* @FW_RA_N_CTL, align 4
  %170 = load i32, i32* %11, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* @FW_RA_BG_CTL, align 4
  %173 = load i32, i32* @FW_RA_INIT_CTL, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %11, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* @FW_RA_PARAM_CLR, align 4
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %182 = load i32, i32* @COMP_CMD, align 4
  %183 = load i32, i32* @DBG_LOUD, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @FW_CMD_PARA_SET(%struct.rtl_priv* %187, i32 %188)
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %190, i32 %191)
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %194 = load i32, i32* @FW_RA_N_CTL, align 4
  %195 = call i32 @FW_CMD_IO_CLR(%struct.rtl_priv* %193, i32 %194)
  br label %372

196:                                              ; preds = %67
  %197 = load i32, i32* @FW_RA_BG_CTL, align 4
  %198 = load i32, i32* %11, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* @FW_RA_N_CTL, align 4
  %201 = load i32, i32* @FW_RA_INIT_CTL, align 4
  %202 = or i32 %200, %201
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* @FW_RA_PARAM_CLR, align 4
  %207 = load i32, i32* %10, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %10, align 4
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @FW_CMD_PARA_SET(%struct.rtl_priv* %209, i32 %210)
  %212 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %212, i32 %213)
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %216 = load i32, i32* @FW_RA_BG_CTL, align 4
  %217 = call i32 @FW_CMD_IO_CLR(%struct.rtl_priv* %215, i32 %216)
  br label %372

218:                                              ; preds = %67
  %219 = load i32, i32* @FW_IQK_CTL, align 4
  %220 = load i32, i32* %11, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %11, align 4
  %222 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %222, i32 %223)
  %225 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %226 = load i32, i32* @FW_IQK_CTL, align 4
  %227 = call i32 @FW_CMD_IO_CLR(%struct.rtl_priv* %225, i32 %226)
  br label %372

228:                                              ; preds = %67
  %229 = load i32, i32* @FW_DRIVER_CTRL_DM_CTL, align 4
  %230 = load i32, i32* %11, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %11, align 4
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %232, i32 %233)
  br label %372

235:                                              ; preds = %67
  %236 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %237 = load i32, i32* @FW_HIGH_PWR_ENABLE_CTL, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @FW_SS_CTL, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* %11, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %11, align 4
  %243 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %244 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @HAL_DM_DIG_DISABLE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %235
  %251 = load %struct.dig_t*, %struct.dig_t** %7, align 8
  %252 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250, %235
  %256 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %11, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %11, align 4
  br label %260

260:                                              ; preds = %255, %250
  %261 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %262 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %260
  %269 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %270 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %268, %260
  %275 = load i32, i32* @FW_HIGH_PWR_ENABLE_CTL, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %11, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %274, %268
  %280 = load %struct.dig_t*, %struct.dig_t** %7, align 8
  %281 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @DIG_EXT_PORT_STAGE_0, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %291, label %285

285:                                              ; preds = %279
  %286 = load %struct.dig_t*, %struct.dig_t** %7, align 8
  %287 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @DIG_EXT_PORT_STAGE_1, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %285, %279
  %292 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %293 = xor i32 %292, -1
  %294 = load i32, i32* %11, align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* %11, align 4
  br label %296

296:                                              ; preds = %291, %285
  %297 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %297, i32 %298)
  store i32 1, i32* %12, align 4
  br label %372

300:                                              ; preds = %67
  %301 = load i32, i32* @FW_DIG_ENABLE_CTL, align 4
  %302 = load i32, i32* @FW_HIGH_PWR_ENABLE_CTL, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @FW_SS_CTL, align 4
  %305 = or i32 %303, %304
  %306 = xor i32 %305, -1
  %307 = load i32, i32* %11, align 4
  %308 = and i32 %307, %306
  store i32 %308, i32* %11, align 4
  %309 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %310 = load i32, i32* %11, align 4
  %311 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %309, i32 %310)
  store i32 1, i32* %12, align 4
  br label %372

312:                                              ; preds = %67
  %313 = load i32, i32* @FW_HIGH_PWR_ENABLE_CTL, align 4
  %314 = xor i32 %313, -1
  %315 = load i32, i32* %11, align 4
  %316 = and i32 %315, %314
  store i32 %316, i32* %11, align 4
  %317 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %317, i32 %318)
  store i32 1, i32* %12, align 4
  br label %372

320:                                              ; preds = %67
  %321 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %322 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %343, label %328

328:                                              ; preds = %320
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %330 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %328
  %335 = load i32, i32* @FW_HIGH_PWR_ENABLE_CTL, align 4
  %336 = load i32, i32* @FW_SS_CTL, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* %11, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %11, align 4
  %340 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %341 = load i32, i32* %11, align 4
  %342 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %340, i32 %341)
  store i32 1, i32* %12, align 4
  br label %343

343:                                              ; preds = %334, %328, %320
  br label %372

344:                                              ; preds = %67
  %345 = load i32, i32* @FW_FA_CTL, align 4
  %346 = load i32, i32* %11, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %11, align 4
  %348 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %349 = load i32, i32* %11, align 4
  %350 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %348, i32 %349)
  br label %372

351:                                              ; preds = %67
  %352 = load i32, i32* @FW_FA_CTL, align 4
  %353 = xor i32 %352, -1
  %354 = load i32, i32* %11, align 4
  %355 = and i32 %354, %353
  store i32 %355, i32* %11, align 4
  %356 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %357 = load i32, i32* %11, align 4
  %358 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %356, i32 %357)
  br label %372

359:                                              ; preds = %67
  %360 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %361 = load i32, i32* @COMP_CMD, align 4
  %362 = load i32, i32* @DBG_LOUD, align 4
  %363 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %360, i32 %361, i32 %362, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %364 = load i32, i32* @FW_PAPE_CTL_BY_SW_HW, align 4
  %365 = xor i32 %364, -1
  %366 = load i32, i32* %11, align 4
  %367 = and i32 %366, %365
  store i32 %367, i32* %11, align 4
  %368 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %369 = load i32, i32* %11, align 4
  %370 = call i32 @FW_CMD_IO_SET(%struct.rtl_priv* %368, i32 %369)
  br label %372

371:                                              ; preds = %67
  store i32 1, i32* %12, align 4
  br label %372

372:                                              ; preds = %371, %359, %351, %344, %343, %312, %300, %296, %228, %218, %196, %168, %131, %117, %116, %83, %69
  br label %373

373:                                              ; preds = %372, %55
  %374 = load i32, i32* %12, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %387

376:                                              ; preds = %373
  %377 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %378 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %376
  %382 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %383 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %382, i32 0, i32 0
  store i32 1, i32* %383, align 4
  %384 = load i32, i32* %5, align 4
  %385 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %386 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %385, i32 0, i32 1
  store i32 %384, i32* %386, align 4
  br label %388

387:                                              ; preds = %376, %373
  store i32 0, i32* %3, align 4
  br label %391

388:                                              ; preds = %381
  %389 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %390 = call i32 @_rtl92s_phy_set_fwcmd_io(%struct.ieee80211_hw* %389)
  store i32 1, i32* %3, align 4
  br label %391

391:                                              ; preds = %388, %387
  %392 = load i32, i32* %3, align 4
  ret i32 %392
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @FW_CMD_IO_PARA_QUERY(%struct.rtl_priv*) #1

declare dso_local i32 @FW_CMD_IO_QUERY(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @hal_get_firmwareversion(%struct.rtl_priv*) #1

declare dso_local i32 @FW_CMD_IO_SET(%struct.rtl_priv*, i32) #1

declare dso_local i32 @FW_CMD_IO_CLR(%struct.rtl_priv*, i32) #1

declare dso_local i32 @FW_CMD_PARA_SET(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl92s_phy_set_fwcmd_io(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
