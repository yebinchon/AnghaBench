; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_switch_wirelessband.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_switch_wirelessband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_hal = type { i64, i64 }
%struct.rtl_dm = type { i32, i32, i32 }

@RTXPATH = common dso_local global i32 0, align 4
@RCCK_RX = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@ROFDMCCKEN = common dso_local global i32 0, align 4
@BOFDMEN = common dso_local global i32 0, align 4
@BCCKEN = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@RA_RFE_PINMUX = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RA_TXSCALE = common dso_local global i32 0, align 4
@REG_CCK_CHECK = common dso_local global i32 0, align 4
@REG_TXPKT_EMPTY = common dso_local global i32 0, align 4
@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Reg41A value %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Delay 50us\0A\00", align 1
@COMP_MLME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"PHY_SwitchWirelessBand8812(): Switch to 5G Band. Count = %d reg41A=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"==>PHY_SwitchWirelessBand8812() BAND_ON_5G settings OFDM index 0x%x\0A\00", align 1
@RF90_PATH_A = common dso_local global i64 0, align 8
@RB_TXSCALE = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i64 0, align 8
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"<==rtl8821ae_phy_switch_wirelessband():Switch Band OK.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_switch_wirelessband(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_dm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %6, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %19)
  store %struct.rtl_dm* %20, %struct.rtl_dm** %7, align 8
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load i32, i32* @RTXPATH, align 4
  %26 = call i32 @rtl8821ae_phy_query_bb_reg(%struct.ieee80211_hw* %24, i32 %25, i32 240)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = load i32, i32* @RCCK_RX, align 4
  %29 = call i32 @rtl8821ae_phy_query_bb_reg(%struct.ieee80211_hw* %27, i32 %28, i32 251658240)
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = zext i32 %31 to i64
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BAND_ON_2_4G, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %2
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = load i32, i32* @ROFDMCCKEN, align 4
  %43 = load i32, i32* @BOFDMEN, align 4
  %44 = load i32, i32* @BCCKEN, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %41, i32 %42, i32 %45, i32 3)
  %47 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load i32, i32* @RA_RFE_PINMUX, align 4
  %55 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %53, i32 %54, i32 61440, i32 7)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load i32, i32* @RA_RFE_PINMUX, align 4
  %58 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %56, i32 %57, i32 240, i32 7)
  br label %59

59:                                               ; preds = %52, %40
  %60 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %61 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 2100, i32 3, i32 1)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %70 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i32, i32* @RA_TXSCALE, align 4
  %77 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %75, i32 %76, i32 3840, i32 0)
  br label %81

78:                                               ; preds = %68
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %80 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %79, i32 2092, i32 3, i32 0)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = call i32 @_rtl8812ae_phy_set_rfe_reg_24g(%struct.ieee80211_hw* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %92 = load i32, i32* @RTXPATH, align 4
  %93 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %91, i32 %92, i32 240, i32 1)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load i32, i32* @RCCK_RX, align 4
  %96 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 251658240, i32 1)
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %98 = load i32, i32* @REG_CCK_CHECK, align 4
  %99 = call i32 @rtl_write_byte(%struct.rtl_priv* %97, i32 %98, i32 0)
  br label %218

100:                                              ; preds = %2
  %101 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %102 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = load i32, i32* @RA_RFE_PINMUX, align 4
  %109 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %107, i32 %108, i32 61440, i32 5)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %111 = load i32, i32* @RA_RFE_PINMUX, align 4
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %110, i32 %111, i32 240, i32 4)
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %115 = load i32, i32* @REG_CCK_CHECK, align 4
  %116 = call i32 @rtl_write_byte(%struct.rtl_priv* %114, i32 %115, i32 128)
  store i32 0, i32* %12, align 4
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %118 = load i32, i32* @REG_TXPKT_EMPTY, align 4
  %119 = call i32 @rtl_read_word(%struct.rtl_priv* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %121 = load i32, i32* @COMP_SCAN, align 4
  %122 = load i32, i32* @DBG_LOUD, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, 48
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %135, %113
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 48
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 50
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i1 [ false, %127 ], [ %132, %130 ]
  br i1 %134, label %135, label %153

135:                                              ; preds = %133
  %136 = call i32 @udelay(i32 50)
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %138 = load i32, i32* @COMP_SCAN, align 4
  %139 = load i32, i32* @DBG_LOUD, align 4
  %140 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %142 = load i32, i32* @REG_TXPKT_EMPTY, align 4
  %143 = call i32 @rtl_read_word(%struct.rtl_priv* %141, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %144, 48
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %149 = load i32, i32* @COMP_SCAN, align 4
  %150 = load i32, i32* @DBG_LOUD, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %127

153:                                              ; preds = %133
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %158 = load i32, i32* @COMP_MLME, align 4
  %159 = load i32, i32* @DBG_LOUD, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %156, %153
  %164 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %165 = load i32, i32* @ROFDMCCKEN, align 4
  %166 = load i32, i32* @BOFDMEN, align 4
  %167 = load i32, i32* @BCCKEN, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %164, i32 %165, i32 %168, i32 3)
  %170 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %171 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %177 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %176, i32 2100, i32 3, i32 2)
  br label %178

178:                                              ; preds = %175, %163
  %179 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %180 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %186 = load i32, i32* @RA_TXSCALE, align 4
  %187 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %185, i32 %186, i32 3840, i32 1)
  br label %191

188:                                              ; preds = %178
  %189 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %190 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %189, i32 2092, i32 3, i32 1)
  br label %191

191:                                              ; preds = %188, %184
  %192 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %193 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %199 = call i32 @_rtl8812ae_phy_set_rfe_reg_5g(%struct.ieee80211_hw* %198)
  br label %200

200:                                              ; preds = %197, %191
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %202 = load i32, i32* @RTXPATH, align 4
  %203 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %201, i32 %202, i32 240, i32 0)
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %205 = load i32, i32* @RCCK_RX, align 4
  %206 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %204, i32 %205, i32 251658240, i32 15)
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %208 = load i32, i32* @COMP_SCAN, align 4
  %209 = load i32, i32* @DBG_LOUD, align 4
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %211 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @RF90_PATH_A, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %200, %90
  %219 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %220 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %226 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %275

230:                                              ; preds = %224, %218
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %232 = load i32, i32* @RA_TXSCALE, align 4
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %234 = load i64, i64* %4, align 8
  %235 = load i64, i64* @RF90_PATH_A, align 8
  %236 = call i32 @phy_get_tx_swing_8812A(%struct.ieee80211_hw* %233, i64 %234, i64 %235)
  %237 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %231, i32 %232, i32 -2097152, i32 %236)
  %238 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %239 = load i32, i32* @RB_TXSCALE, align 4
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %241 = load i64, i64* %4, align 8
  %242 = load i64, i64* @RF90_PATH_B, align 8
  %243 = call i32 @phy_get_tx_swing_8812A(%struct.ieee80211_hw* %240, i64 %241, i64 %242)
  %244 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %238, i32 %239, i32 -2097152, i32 %243)
  %245 = load i64, i64* %4, align 8
  %246 = load i64, i64* %8, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %272

248:                                              ; preds = %230
  %249 = load %struct.rtl_dm*, %struct.rtl_dm** %7, align 8
  %250 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.rtl_dm*, %struct.rtl_dm** %7, align 8
  %253 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %251, %254
  store i32 %255, i32* %11, align 4
  %256 = load i64, i64* %4, align 8
  %257 = load i64, i64* @BAND_ON_2_4G, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %248
  %260 = load i32, i32* %11, align 4
  br label %264

261:                                              ; preds = %248
  %262 = load i32, i32* %11, align 4
  %263 = mul nsw i32 -1, %262
  br label %264

264:                                              ; preds = %261, %259
  %265 = phi i32 [ %260, %259 ], [ %263, %261 ]
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = mul nsw i32 %266, 2
  %268 = load %struct.rtl_dm*, %struct.rtl_dm** %7, align 8
  %269 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, %267
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %264, %230
  %273 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %274 = call i32 @rtl8821ae_dm_clear_txpower_tracking_state(%struct.ieee80211_hw* %273)
  br label %275

275:                                              ; preds = %272, %224
  %276 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %277 = load i32, i32* @COMP_SCAN, align 4
  %278 = load i32, i32* @DBG_TRACE, align 4
  %279 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %276, i32 %277, i32 %278, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8821ae_phy_query_bb_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl8812ae_phy_set_rfe_reg_24g(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl8812ae_phy_set_rfe_reg_5g(%struct.ieee80211_hw*) #1

declare dso_local i32 @phy_get_tx_swing_8812A(%struct.ieee80211_hw*, i64, i64) #1

declare dso_local i32 @rtl8821ae_dm_clear_txpower_tracking_state(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
