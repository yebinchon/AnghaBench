; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_set_fwcmd_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_set_fwcmd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.rtl_phy }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtl_phy = type { i32 }
%struct.rtl_hal = type { i32, i32 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FW_CMD_RA_RESET\0A\00", align 1
@WFM5 = common dso_local global i32 0, align 4
@FW_RA_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"FW_CMD_RA_ACTIVE\0A\00", align 1
@FW_RA_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"FW_CMD_RA_REFRESH_N\0A\00", align 1
@FW_RA_REFRESH = common dso_local global i32 0, align 4
@FW_RA_ENABLE_RSSI_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"FW_CMD_RA_REFRESH_BG\0A\00", align 1
@FW_RA_DISABLE_RSSI_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"FW_CMD_RA_REFRESH_N_COMB\0A\00", align 1
@FW_RA_IOT_N_COMB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"FW_CMD_RA_REFRESH_BG_COMB\0A\00", align 1
@FW_RA_IOT_BG_COMB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"FW_CMD_IQK_ENABLE\0A\00", align 1
@FW_IQK_ENABLE = common dso_local global i32 0, align 4
@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4
@RCCK0_CCA = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@HAL_DM_HIPWR_DISABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"FW_CMD_LPS_ENTER\0A\00", align 1
@FW_LPS_ENTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"FW_CMD_LPS_LEAVE\0A\00", align 1
@FW_LPS_LEAVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"FW_CMD_ADD_A2_ENTRY\0A\00", align 1
@FW_ADD_A2_ENTRY = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"FW_CMD_CTRL_DM_BY_DRIVER\0A\00", align 1
@FW_CTRL_DM_BY_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_phy_set_fwcmd_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_phy_set_fwcmd_io(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 2
  store %struct.rtl_phy* %14, %struct.rtl_phy** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %16 = call i64 @is_hal_stop(%struct.rtl_hal* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %255

19:                                               ; preds = %1
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %20)
  %22 = icmp slt i32 %21, 52
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %36

24:                                               ; preds = %19
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %34 [
    i32 131, label %28
    i32 133, label %31
  ]

28:                                               ; preds = %24
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 0
  store i32 130, i32* %30, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %32, i32 0, i32 0
  store i32 132, i32* %33, align 4
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %31, %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %38 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %249 [
    i32 129, label %40
    i32 134, label %51
    i32 131, label %62
    i32 133, label %80
    i32 130, label %97
    i32 132, label %109
    i32 138, label %121
    i32 135, label %132
    i32 128, label %145
    i32 140, label %155
    i32 139, label %177
    i32 137, label %197
    i32 136, label %216
    i32 142, label %227
    i32 141, label %238
  ]

40:                                               ; preds = %36
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = load i32, i32* @COMP_CMD, align 4
  %43 = load i32, i32* @DBG_DMESG, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = load i32, i32* @WFM5, align 4
  %47 = load i32, i32* @FW_RA_RESET, align 4
  %48 = call i32 @rtl_write_dword(%struct.rtl_priv* %45, i32 %46, i32 %47)
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %50 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %49)
  br label %250

51:                                               ; preds = %36
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @COMP_CMD, align 4
  %54 = load i32, i32* @DBG_DMESG, align 4
  %55 = call i32 @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i32, i32* @WFM5, align 4
  %58 = load i32, i32* @FW_RA_ACTIVE, align 4
  %59 = call i32 @rtl_write_dword(%struct.rtl_priv* %56, i32 %57, i32 %58)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %60)
  br label %250

62:                                               ; preds = %36
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i32, i32* @COMP_CMD, align 4
  %65 = load i32, i32* @DBG_DMESG, align 4
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @FW_RA_REFRESH, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = load i32, i32* @WFM5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @rtl_write_dword(%struct.rtl_priv* %68, i32 %69, i32 %70)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %72)
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = load i32, i32* @WFM5, align 4
  %76 = load i32, i32* @FW_RA_ENABLE_RSSI_MASK, align 4
  %77 = call i32 @rtl_write_dword(%struct.rtl_priv* %74, i32 %75, i32 %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %78)
  br label %250

80:                                               ; preds = %36
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = load i32, i32* @COMP_CMD, align 4
  %83 = load i32, i32* @DBG_DMESG, align 4
  %84 = call i32 @RT_TRACE(%struct.rtl_priv* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = load i32, i32* @WFM5, align 4
  %87 = load i32, i32* @FW_RA_REFRESH, align 4
  %88 = call i32 @rtl_write_dword(%struct.rtl_priv* %85, i32 %86, i32 %87)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %90 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %89)
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %92 = load i32, i32* @WFM5, align 4
  %93 = load i32, i32* @FW_RA_DISABLE_RSSI_MASK, align 4
  %94 = call i32 @rtl_write_dword(%struct.rtl_priv* %91, i32 %92, i32 %93)
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %96 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %95)
  br label %250

97:                                               ; preds = %36
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %99 = load i32, i32* @COMP_CMD, align 4
  %100 = load i32, i32* @DBG_DMESG, align 4
  %101 = call i32 @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @FW_RA_IOT_N_COMB, align 4
  store i32 %102, i32* %6, align 4
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = load i32, i32* @WFM5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @rtl_write_dword(%struct.rtl_priv* %103, i32 %104, i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %107)
  br label %250

109:                                              ; preds = %36
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = load i32, i32* @COMP_CMD, align 4
  %112 = load i32, i32* @DBG_DMESG, align 4
  %113 = call i32 @RT_TRACE(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @FW_RA_IOT_BG_COMB, align 4
  store i32 %114, i32* %6, align 4
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %116 = load i32, i32* @WFM5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @rtl_write_dword(%struct.rtl_priv* %115, i32 %116, i32 %117)
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %120 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %119)
  br label %250

121:                                              ; preds = %36
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %123 = load i32, i32* @COMP_CMD, align 4
  %124 = load i32, i32* @DBG_DMESG, align 4
  %125 = call i32 @RT_TRACE(%struct.rtl_priv* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %127 = load i32, i32* @WFM5, align 4
  %128 = load i32, i32* @FW_IQK_ENABLE, align 4
  %129 = call i32 @rtl_write_dword(%struct.rtl_priv* %126, i32 %127, i32 %128)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %130)
  br label %250

132:                                              ; preds = %36
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %134 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %135 = load i32, i32* @MASKBYTE0, align 4
  %136 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %133, i32 %134, i32 %135, i32 23)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %139 = load i32, i32* @MASKBYTE0, align 4
  %140 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %137, i32 %138, i32 %139, i32 23)
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %142 = load i32, i32* @RCCK0_CCA, align 4
  %143 = load i32, i32* @MASKBYTE2, align 4
  %144 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %141, i32 %142, i32 %143, i32 64)
  br label %250

145:                                              ; preds = %36
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %147 = load i32, i32* @RCCK0_CCA, align 4
  %148 = load i32, i32* @MASKBYTE2, align 4
  %149 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %146, i32 %147, i32 %148, i32 205)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @rtl92s_phy_set_txpower(%struct.ieee80211_hw* %150, i32 %153)
  br label %250

155:                                              ; preds = %36
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %250

164:                                              ; preds = %155
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %166 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %167 = load i32, i32* @MASKBYTE0, align 4
  %168 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %165, i32 %166, i32 %167, i32 23)
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %170 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %171 = load i32, i32* @MASKBYTE0, align 4
  %172 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %169, i32 %170, i32 %171, i32 23)
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %174 = load i32, i32* @RCCK0_CCA, align 4
  %175 = load i32, i32* @MASKBYTE2, align 4
  %176 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %173, i32 %174, i32 %175, i32 64)
  br label %250

177:                                              ; preds = %36
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %177
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %187 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185, %177
  br label %250

192:                                              ; preds = %185
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %194 = load i32, i32* @RCCK0_CCA, align 4
  %195 = load i32, i32* @MASKBYTE2, align 4
  %196 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %193, i32 %194, i32 %195, i32 205)
  br label %250

197:                                              ; preds = %36
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %199 = load i32, i32* @COMP_CMD, align 4
  %200 = load i32, i32* @DBG_DMESG, align 4
  %201 = call i32 @RT_TRACE(%struct.rtl_priv* %198, i32 %199, i32 %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %202 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %203 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %7, align 4
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %207 = load i32, i32* @WFM5, align 4
  %208 = load i32, i32* @FW_LPS_ENTER, align 4
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, 49152
  %211 = shl i32 %210, 8
  %212 = or i32 %208, %211
  %213 = call i32 @rtl_write_dword(%struct.rtl_priv* %206, i32 %207, i32 %212)
  %214 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %215 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %214)
  br label %250

216:                                              ; preds = %36
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %218 = load i32, i32* @COMP_CMD, align 4
  %219 = load i32, i32* @DBG_DMESG, align 4
  %220 = call i32 @RT_TRACE(%struct.rtl_priv* %217, i32 %218, i32 %219, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %222 = load i32, i32* @WFM5, align 4
  %223 = load i32, i32* @FW_LPS_LEAVE, align 4
  %224 = call i32 @rtl_write_dword(%struct.rtl_priv* %221, i32 %222, i32 %223)
  %225 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %226 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %225)
  br label %250

227:                                              ; preds = %36
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %229 = load i32, i32* @COMP_CMD, align 4
  %230 = load i32, i32* @DBG_DMESG, align 4
  %231 = call i32 @RT_TRACE(%struct.rtl_priv* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %233 = load i32, i32* @WFM5, align 4
  %234 = load i32, i32* @FW_ADD_A2_ENTRY, align 4
  %235 = call i32 @rtl_write_dword(%struct.rtl_priv* %232, i32 %233, i32 %234)
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %237 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %236)
  br label %250

238:                                              ; preds = %36
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %240 = load i32, i32* @COMP_CMD, align 4
  %241 = load i32, i32* @DBG_LOUD, align 4
  %242 = call i32 @RT_TRACE(%struct.rtl_priv* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %243 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %244 = load i32, i32* @WFM5, align 4
  %245 = load i32, i32* @FW_CTRL_DM_BY_DRIVER, align 4
  %246 = call i32 @rtl_write_dword(%struct.rtl_priv* %243, i32 %244, i32 %245)
  %247 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %248 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %247)
  br label %250

249:                                              ; preds = %36
  br label %250

250:                                              ; preds = %249, %238, %227, %216, %197, %192, %191, %164, %163, %145, %132, %121, %109, %97, %80, %62, %51, %40
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %252 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %251)
  %253 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %254 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %253, i32 0, i32 1
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %250, %18
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @hal_get_firmwareversion(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92s_phy_set_txpower(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
