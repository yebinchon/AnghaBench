; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RTXAGC_A_CCK11_CCK1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@RTXAGC_A_OFDM18_OFDM6 = common dso_local global i32 0, align 4
@RTXAGC_A_OFDM54_OFDM24 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS15_MCS12 = common dso_local global i32 0, align 4
@RTXAGC_A_NSS1INDEX3_NSS1INDEX0 = common dso_local global i32 0, align 4
@RTXAGC_A_NSS1INDEX7_NSS1INDEX4 = common dso_local global i32 0, align 4
@RTXAGC_A_NSS2INDEX1_NSS1INDEX8 = common dso_local global i32 0, align 4
@RTXAGC_A_NSS2INDEX5_NSS2INDEX2 = common dso_local global i32 0, align 4
@RTXAGC_A_NSS2INDEX9_NSS2INDEX6 = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid Rate!!\0A\00", align 1
@RF90_PATH_B = common dso_local global i64 0, align 8
@RTXAGC_B_CCK11_CCK1 = common dso_local global i32 0, align 4
@RTXAGC_B_OFDM18_OFDM6 = common dso_local global i32 0, align 4
@RTXAGC_B_OFDM54_OFDM24 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS15_MCS12 = common dso_local global i32 0, align 4
@RTXAGC_B_NSS1INDEX3_NSS1INDEX0 = common dso_local global i32 0, align 4
@RTXAGC_B_NSS1INDEX7_NSS1INDEX4 = common dso_local global i32 0, align 4
@RTXAGC_B_NSS2INDEX1_NSS1INDEX8 = common dso_local global i32 0, align 4
@RTXAGC_B_NSS2INDEX5_NSS2INDEX2 = common dso_local global i32 0, align 4
@RTXAGC_B_NSS2INDEX9_NSS2INDEX6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid RFPath!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64)* @_rtl8821ae_phy_set_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_set_txpower_index(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @RF90_PATH_A, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %311

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  switch i64 %16, label %305 [
    i64 172, label %17
    i64 170, label %23
    i64 166, label %29
    i64 175, label %35
    i64 165, label %41
    i64 164, label %47
    i64 174, label %53
    i64 173, label %59
    i64 171, label %65
    i64 169, label %71
    i64 168, label %77
    i64 167, label %83
    i64 163, label %89
    i64 162, label %95
    i64 155, label %101
    i64 154, label %107
    i64 153, label %113
    i64 152, label %119
    i64 151, label %125
    i64 150, label %131
    i64 149, label %137
    i64 148, label %143
    i64 161, label %149
    i64 160, label %155
    i64 159, label %161
    i64 158, label %167
    i64 157, label %173
    i64 156, label %179
    i64 147, label %185
    i64 146, label %191
    i64 145, label %197
    i64 144, label %203
    i64 143, label %209
    i64 142, label %215
    i64 141, label %221
    i64 140, label %227
    i64 139, label %233
    i64 138, label %239
    i64 137, label %245
    i64 136, label %251
    i64 135, label %257
    i64 134, label %263
    i64 133, label %269
    i64 132, label %275
    i64 131, label %281
    i64 130, label %287
    i64 129, label %293
    i64 128, label %299
  ]

17:                                               ; preds = %15
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = load i32, i32* @RTXAGC_A_CCK11_CCK1, align 4
  %20 = load i32, i32* @MASKBYTE0, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %18, i32 %19, i32 %20, i64 %21)
  br label %310

23:                                               ; preds = %15
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = load i32, i32* @RTXAGC_A_CCK11_CCK1, align 4
  %26 = load i32, i32* @MASKBYTE1, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %24, i32 %25, i32 %26, i64 %27)
  br label %310

29:                                               ; preds = %15
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load i32, i32* @RTXAGC_A_CCK11_CCK1, align 4
  %32 = load i32, i32* @MASKBYTE2, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i64 %33)
  br label %310

35:                                               ; preds = %15
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %37 = load i32, i32* @RTXAGC_A_CCK11_CCK1, align 4
  %38 = load i32, i32* @MASKBYTE3, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i64 %39)
  br label %310

41:                                               ; preds = %15
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = load i32, i32* @RTXAGC_A_OFDM18_OFDM6, align 4
  %44 = load i32, i32* @MASKBYTE0, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i64 %45)
  br label %310

47:                                               ; preds = %15
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %49 = load i32, i32* @RTXAGC_A_OFDM18_OFDM6, align 4
  %50 = load i32, i32* @MASKBYTE1, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i64 %51)
  br label %310

53:                                               ; preds = %15
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %55 = load i32, i32* @RTXAGC_A_OFDM18_OFDM6, align 4
  %56 = load i32, i32* @MASKBYTE2, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i64 %57)
  br label %310

59:                                               ; preds = %15
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %61 = load i32, i32* @RTXAGC_A_OFDM18_OFDM6, align 4
  %62 = load i32, i32* @MASKBYTE3, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i64 %63)
  br label %310

65:                                               ; preds = %15
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load i32, i32* @RTXAGC_A_OFDM54_OFDM24, align 4
  %68 = load i32, i32* @MASKBYTE0, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 %67, i32 %68, i64 %69)
  br label %310

71:                                               ; preds = %15
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %73 = load i32, i32* @RTXAGC_A_OFDM54_OFDM24, align 4
  %74 = load i32, i32* @MASKBYTE1, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74, i64 %75)
  br label %310

77:                                               ; preds = %15
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %79 = load i32, i32* @RTXAGC_A_OFDM54_OFDM24, align 4
  %80 = load i32, i32* @MASKBYTE2, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %78, i32 %79, i32 %80, i64 %81)
  br label %310

83:                                               ; preds = %15
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %85 = load i32, i32* @RTXAGC_A_OFDM54_OFDM24, align 4
  %86 = load i32, i32* @MASKBYTE3, align 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 %86, i64 %87)
  br label %310

89:                                               ; preds = %15
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %91 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %92 = load i32, i32* @MASKBYTE0, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92, i64 %93)
  br label %310

95:                                               ; preds = %15
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %97 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %98 = load i32, i32* @MASKBYTE1, align 4
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %96, i32 %97, i32 %98, i64 %99)
  br label %310

101:                                              ; preds = %15
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %103 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %104 = load i32, i32* @MASKBYTE2, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %102, i32 %103, i32 %104, i64 %105)
  br label %310

107:                                              ; preds = %15
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %109 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %110 = load i32, i32* @MASKBYTE3, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i64 %111)
  br label %310

113:                                              ; preds = %15
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %115 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %116 = load i32, i32* @MASKBYTE0, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 %116, i64 %117)
  br label %310

119:                                              ; preds = %15
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %121 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %122 = load i32, i32* @MASKBYTE1, align 4
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %120, i32 %121, i32 %122, i64 %123)
  br label %310

125:                                              ; preds = %15
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %127 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %128 = load i32, i32* @MASKBYTE2, align 4
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %126, i32 %127, i32 %128, i64 %129)
  br label %310

131:                                              ; preds = %15
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %133 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %134 = load i32, i32* @MASKBYTE3, align 4
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %132, i32 %133, i32 %134, i64 %135)
  br label %310

137:                                              ; preds = %15
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %139 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %140 = load i32, i32* @MASKBYTE0, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %138, i32 %139, i32 %140, i64 %141)
  br label %310

143:                                              ; preds = %15
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %145 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %146 = load i32, i32* @MASKBYTE1, align 4
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %144, i32 %145, i32 %146, i64 %147)
  br label %310

149:                                              ; preds = %15
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %151 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %152 = load i32, i32* @MASKBYTE2, align 4
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %150, i32 %151, i32 %152, i64 %153)
  br label %310

155:                                              ; preds = %15
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %157 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %158 = load i32, i32* @MASKBYTE3, align 4
  %159 = load i64, i64* %6, align 8
  %160 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %156, i32 %157, i32 %158, i64 %159)
  br label %310

161:                                              ; preds = %15
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %163 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %164 = load i32, i32* @MASKBYTE0, align 4
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %162, i32 %163, i32 %164, i64 %165)
  br label %310

167:                                              ; preds = %15
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %169 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %170 = load i32, i32* @MASKBYTE1, align 4
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %168, i32 %169, i32 %170, i64 %171)
  br label %310

173:                                              ; preds = %15
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %175 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %176 = load i32, i32* @MASKBYTE2, align 4
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %174, i32 %175, i32 %176, i64 %177)
  br label %310

179:                                              ; preds = %15
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %181 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %182 = load i32, i32* @MASKBYTE3, align 4
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %180, i32 %181, i32 %182, i64 %183)
  br label %310

185:                                              ; preds = %15
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %187 = load i32, i32* @RTXAGC_A_NSS1INDEX3_NSS1INDEX0, align 4
  %188 = load i32, i32* @MASKBYTE0, align 4
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %186, i32 %187, i32 %188, i64 %189)
  br label %310

191:                                              ; preds = %15
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %193 = load i32, i32* @RTXAGC_A_NSS1INDEX3_NSS1INDEX0, align 4
  %194 = load i32, i32* @MASKBYTE1, align 4
  %195 = load i64, i64* %6, align 8
  %196 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %192, i32 %193, i32 %194, i64 %195)
  br label %310

197:                                              ; preds = %15
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %199 = load i32, i32* @RTXAGC_A_NSS1INDEX3_NSS1INDEX0, align 4
  %200 = load i32, i32* @MASKBYTE2, align 4
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %198, i32 %199, i32 %200, i64 %201)
  br label %310

203:                                              ; preds = %15
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %205 = load i32, i32* @RTXAGC_A_NSS1INDEX3_NSS1INDEX0, align 4
  %206 = load i32, i32* @MASKBYTE3, align 4
  %207 = load i64, i64* %6, align 8
  %208 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %204, i32 %205, i32 %206, i64 %207)
  br label %310

209:                                              ; preds = %15
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %211 = load i32, i32* @RTXAGC_A_NSS1INDEX7_NSS1INDEX4, align 4
  %212 = load i32, i32* @MASKBYTE0, align 4
  %213 = load i64, i64* %6, align 8
  %214 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %210, i32 %211, i32 %212, i64 %213)
  br label %310

215:                                              ; preds = %15
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %217 = load i32, i32* @RTXAGC_A_NSS1INDEX7_NSS1INDEX4, align 4
  %218 = load i32, i32* @MASKBYTE1, align 4
  %219 = load i64, i64* %6, align 8
  %220 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %216, i32 %217, i32 %218, i64 %219)
  br label %310

221:                                              ; preds = %15
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %223 = load i32, i32* @RTXAGC_A_NSS1INDEX7_NSS1INDEX4, align 4
  %224 = load i32, i32* @MASKBYTE2, align 4
  %225 = load i64, i64* %6, align 8
  %226 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %222, i32 %223, i32 %224, i64 %225)
  br label %310

227:                                              ; preds = %15
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %229 = load i32, i32* @RTXAGC_A_NSS1INDEX7_NSS1INDEX4, align 4
  %230 = load i32, i32* @MASKBYTE3, align 4
  %231 = load i64, i64* %6, align 8
  %232 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %228, i32 %229, i32 %230, i64 %231)
  br label %310

233:                                              ; preds = %15
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %235 = load i32, i32* @RTXAGC_A_NSS2INDEX1_NSS1INDEX8, align 4
  %236 = load i32, i32* @MASKBYTE0, align 4
  %237 = load i64, i64* %6, align 8
  %238 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %234, i32 %235, i32 %236, i64 %237)
  br label %310

239:                                              ; preds = %15
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %241 = load i32, i32* @RTXAGC_A_NSS2INDEX1_NSS1INDEX8, align 4
  %242 = load i32, i32* @MASKBYTE1, align 4
  %243 = load i64, i64* %6, align 8
  %244 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %240, i32 %241, i32 %242, i64 %243)
  br label %310

245:                                              ; preds = %15
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %247 = load i32, i32* @RTXAGC_A_NSS2INDEX1_NSS1INDEX8, align 4
  %248 = load i32, i32* @MASKBYTE2, align 4
  %249 = load i64, i64* %6, align 8
  %250 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %246, i32 %247, i32 %248, i64 %249)
  br label %310

251:                                              ; preds = %15
  %252 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %253 = load i32, i32* @RTXAGC_A_NSS2INDEX1_NSS1INDEX8, align 4
  %254 = load i32, i32* @MASKBYTE3, align 4
  %255 = load i64, i64* %6, align 8
  %256 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %252, i32 %253, i32 %254, i64 %255)
  br label %310

257:                                              ; preds = %15
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %259 = load i32, i32* @RTXAGC_A_NSS2INDEX5_NSS2INDEX2, align 4
  %260 = load i32, i32* @MASKBYTE0, align 4
  %261 = load i64, i64* %6, align 8
  %262 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %258, i32 %259, i32 %260, i64 %261)
  br label %310

263:                                              ; preds = %15
  %264 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %265 = load i32, i32* @RTXAGC_A_NSS2INDEX5_NSS2INDEX2, align 4
  %266 = load i32, i32* @MASKBYTE1, align 4
  %267 = load i64, i64* %6, align 8
  %268 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %264, i32 %265, i32 %266, i64 %267)
  br label %310

269:                                              ; preds = %15
  %270 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %271 = load i32, i32* @RTXAGC_A_NSS2INDEX5_NSS2INDEX2, align 4
  %272 = load i32, i32* @MASKBYTE2, align 4
  %273 = load i64, i64* %6, align 8
  %274 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %270, i32 %271, i32 %272, i64 %273)
  br label %310

275:                                              ; preds = %15
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %277 = load i32, i32* @RTXAGC_A_NSS2INDEX5_NSS2INDEX2, align 4
  %278 = load i32, i32* @MASKBYTE3, align 4
  %279 = load i64, i64* %6, align 8
  %280 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %276, i32 %277, i32 %278, i64 %279)
  br label %310

281:                                              ; preds = %15
  %282 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %283 = load i32, i32* @RTXAGC_A_NSS2INDEX9_NSS2INDEX6, align 4
  %284 = load i32, i32* @MASKBYTE0, align 4
  %285 = load i64, i64* %6, align 8
  %286 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %282, i32 %283, i32 %284, i64 %285)
  br label %310

287:                                              ; preds = %15
  %288 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %289 = load i32, i32* @RTXAGC_A_NSS2INDEX9_NSS2INDEX6, align 4
  %290 = load i32, i32* @MASKBYTE1, align 4
  %291 = load i64, i64* %6, align 8
  %292 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %288, i32 %289, i32 %290, i64 %291)
  br label %310

293:                                              ; preds = %15
  %294 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %295 = load i32, i32* @RTXAGC_A_NSS2INDEX9_NSS2INDEX6, align 4
  %296 = load i32, i32* @MASKBYTE2, align 4
  %297 = load i64, i64* %6, align 8
  %298 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %294, i32 %295, i32 %296, i64 %297)
  br label %310

299:                                              ; preds = %15
  %300 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %301 = load i32, i32* @RTXAGC_A_NSS2INDEX9_NSS2INDEX6, align 4
  %302 = load i32, i32* @MASKBYTE3, align 4
  %303 = load i64, i64* %6, align 8
  %304 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %300, i32 %301, i32 %302, i64 %303)
  br label %310

305:                                              ; preds = %15
  %306 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %307 = load i32, i32* @COMP_POWER, align 4
  %308 = load i32, i32* @DBG_LOUD, align 4
  %309 = call i32 @RT_TRACE(%struct.rtl_priv* %306, i32 %307, i32 %308, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %310

310:                                              ; preds = %305, %299, %293, %287, %281, %275, %269, %263, %257, %251, %245, %239, %233, %227, %221, %215, %209, %203, %197, %191, %185, %179, %173, %167, %161, %155, %149, %143, %137, %131, %125, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17
  br label %617

311:                                              ; preds = %4
  %312 = load i64, i64* %7, align 8
  %313 = load i64, i64* @RF90_PATH_B, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %611

315:                                              ; preds = %311
  %316 = load i64, i64* %8, align 8
  switch i64 %316, label %605 [
    i64 172, label %317
    i64 170, label %323
    i64 166, label %329
    i64 175, label %335
    i64 165, label %341
    i64 164, label %347
    i64 174, label %353
    i64 173, label %359
    i64 171, label %365
    i64 169, label %371
    i64 168, label %377
    i64 167, label %383
    i64 163, label %389
    i64 162, label %395
    i64 155, label %401
    i64 154, label %407
    i64 153, label %413
    i64 152, label %419
    i64 151, label %425
    i64 150, label %431
    i64 149, label %437
    i64 148, label %443
    i64 161, label %449
    i64 160, label %455
    i64 159, label %461
    i64 158, label %467
    i64 157, label %473
    i64 156, label %479
    i64 147, label %485
    i64 146, label %491
    i64 145, label %497
    i64 144, label %503
    i64 143, label %509
    i64 142, label %515
    i64 141, label %521
    i64 140, label %527
    i64 139, label %533
    i64 138, label %539
    i64 137, label %545
    i64 136, label %551
    i64 135, label %557
    i64 134, label %563
    i64 133, label %569
    i64 132, label %575
    i64 131, label %581
    i64 130, label %587
    i64 129, label %593
    i64 128, label %599
  ]

317:                                              ; preds = %315
  %318 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %319 = load i32, i32* @RTXAGC_B_CCK11_CCK1, align 4
  %320 = load i32, i32* @MASKBYTE0, align 4
  %321 = load i64, i64* %6, align 8
  %322 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %318, i32 %319, i32 %320, i64 %321)
  br label %610

323:                                              ; preds = %315
  %324 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %325 = load i32, i32* @RTXAGC_B_CCK11_CCK1, align 4
  %326 = load i32, i32* @MASKBYTE1, align 4
  %327 = load i64, i64* %6, align 8
  %328 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %324, i32 %325, i32 %326, i64 %327)
  br label %610

329:                                              ; preds = %315
  %330 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %331 = load i32, i32* @RTXAGC_B_CCK11_CCK1, align 4
  %332 = load i32, i32* @MASKBYTE2, align 4
  %333 = load i64, i64* %6, align 8
  %334 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %330, i32 %331, i32 %332, i64 %333)
  br label %610

335:                                              ; preds = %315
  %336 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %337 = load i32, i32* @RTXAGC_B_CCK11_CCK1, align 4
  %338 = load i32, i32* @MASKBYTE3, align 4
  %339 = load i64, i64* %6, align 8
  %340 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %336, i32 %337, i32 %338, i64 %339)
  br label %610

341:                                              ; preds = %315
  %342 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %343 = load i32, i32* @RTXAGC_B_OFDM18_OFDM6, align 4
  %344 = load i32, i32* @MASKBYTE0, align 4
  %345 = load i64, i64* %6, align 8
  %346 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %342, i32 %343, i32 %344, i64 %345)
  br label %610

347:                                              ; preds = %315
  %348 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %349 = load i32, i32* @RTXAGC_B_OFDM18_OFDM6, align 4
  %350 = load i32, i32* @MASKBYTE1, align 4
  %351 = load i64, i64* %6, align 8
  %352 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %348, i32 %349, i32 %350, i64 %351)
  br label %610

353:                                              ; preds = %315
  %354 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %355 = load i32, i32* @RTXAGC_B_OFDM18_OFDM6, align 4
  %356 = load i32, i32* @MASKBYTE2, align 4
  %357 = load i64, i64* %6, align 8
  %358 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %354, i32 %355, i32 %356, i64 %357)
  br label %610

359:                                              ; preds = %315
  %360 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %361 = load i32, i32* @RTXAGC_B_OFDM18_OFDM6, align 4
  %362 = load i32, i32* @MASKBYTE3, align 4
  %363 = load i64, i64* %6, align 8
  %364 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %360, i32 %361, i32 %362, i64 %363)
  br label %610

365:                                              ; preds = %315
  %366 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %367 = load i32, i32* @RTXAGC_B_OFDM54_OFDM24, align 4
  %368 = load i32, i32* @MASKBYTE0, align 4
  %369 = load i64, i64* %6, align 8
  %370 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %366, i32 %367, i32 %368, i64 %369)
  br label %610

371:                                              ; preds = %315
  %372 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %373 = load i32, i32* @RTXAGC_B_OFDM54_OFDM24, align 4
  %374 = load i32, i32* @MASKBYTE1, align 4
  %375 = load i64, i64* %6, align 8
  %376 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %372, i32 %373, i32 %374, i64 %375)
  br label %610

377:                                              ; preds = %315
  %378 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %379 = load i32, i32* @RTXAGC_B_OFDM54_OFDM24, align 4
  %380 = load i32, i32* @MASKBYTE2, align 4
  %381 = load i64, i64* %6, align 8
  %382 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %378, i32 %379, i32 %380, i64 %381)
  br label %610

383:                                              ; preds = %315
  %384 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %385 = load i32, i32* @RTXAGC_B_OFDM54_OFDM24, align 4
  %386 = load i32, i32* @MASKBYTE3, align 4
  %387 = load i64, i64* %6, align 8
  %388 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %384, i32 %385, i32 %386, i64 %387)
  br label %610

389:                                              ; preds = %315
  %390 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %391 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %392 = load i32, i32* @MASKBYTE0, align 4
  %393 = load i64, i64* %6, align 8
  %394 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %390, i32 %391, i32 %392, i64 %393)
  br label %610

395:                                              ; preds = %315
  %396 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %397 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %398 = load i32, i32* @MASKBYTE1, align 4
  %399 = load i64, i64* %6, align 8
  %400 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %396, i32 %397, i32 %398, i64 %399)
  br label %610

401:                                              ; preds = %315
  %402 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %403 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %404 = load i32, i32* @MASKBYTE2, align 4
  %405 = load i64, i64* %6, align 8
  %406 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %402, i32 %403, i32 %404, i64 %405)
  br label %610

407:                                              ; preds = %315
  %408 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %409 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %410 = load i32, i32* @MASKBYTE3, align 4
  %411 = load i64, i64* %6, align 8
  %412 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %408, i32 %409, i32 %410, i64 %411)
  br label %610

413:                                              ; preds = %315
  %414 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %415 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %416 = load i32, i32* @MASKBYTE0, align 4
  %417 = load i64, i64* %6, align 8
  %418 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %414, i32 %415, i32 %416, i64 %417)
  br label %610

419:                                              ; preds = %315
  %420 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %421 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %422 = load i32, i32* @MASKBYTE1, align 4
  %423 = load i64, i64* %6, align 8
  %424 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %420, i32 %421, i32 %422, i64 %423)
  br label %610

425:                                              ; preds = %315
  %426 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %427 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %428 = load i32, i32* @MASKBYTE2, align 4
  %429 = load i64, i64* %6, align 8
  %430 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %426, i32 %427, i32 %428, i64 %429)
  br label %610

431:                                              ; preds = %315
  %432 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %433 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %434 = load i32, i32* @MASKBYTE3, align 4
  %435 = load i64, i64* %6, align 8
  %436 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %432, i32 %433, i32 %434, i64 %435)
  br label %610

437:                                              ; preds = %315
  %438 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %439 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %440 = load i32, i32* @MASKBYTE0, align 4
  %441 = load i64, i64* %6, align 8
  %442 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %438, i32 %439, i32 %440, i64 %441)
  br label %610

443:                                              ; preds = %315
  %444 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %445 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %446 = load i32, i32* @MASKBYTE1, align 4
  %447 = load i64, i64* %6, align 8
  %448 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %444, i32 %445, i32 %446, i64 %447)
  br label %610

449:                                              ; preds = %315
  %450 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %451 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %452 = load i32, i32* @MASKBYTE2, align 4
  %453 = load i64, i64* %6, align 8
  %454 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %450, i32 %451, i32 %452, i64 %453)
  br label %610

455:                                              ; preds = %315
  %456 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %457 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %458 = load i32, i32* @MASKBYTE3, align 4
  %459 = load i64, i64* %6, align 8
  %460 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %456, i32 %457, i32 %458, i64 %459)
  br label %610

461:                                              ; preds = %315
  %462 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %463 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %464 = load i32, i32* @MASKBYTE0, align 4
  %465 = load i64, i64* %6, align 8
  %466 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %462, i32 %463, i32 %464, i64 %465)
  br label %610

467:                                              ; preds = %315
  %468 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %469 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %470 = load i32, i32* @MASKBYTE1, align 4
  %471 = load i64, i64* %6, align 8
  %472 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %468, i32 %469, i32 %470, i64 %471)
  br label %610

473:                                              ; preds = %315
  %474 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %475 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %476 = load i32, i32* @MASKBYTE2, align 4
  %477 = load i64, i64* %6, align 8
  %478 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %474, i32 %475, i32 %476, i64 %477)
  br label %610

479:                                              ; preds = %315
  %480 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %481 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %482 = load i32, i32* @MASKBYTE3, align 4
  %483 = load i64, i64* %6, align 8
  %484 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %480, i32 %481, i32 %482, i64 %483)
  br label %610

485:                                              ; preds = %315
  %486 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %487 = load i32, i32* @RTXAGC_B_NSS1INDEX3_NSS1INDEX0, align 4
  %488 = load i32, i32* @MASKBYTE0, align 4
  %489 = load i64, i64* %6, align 8
  %490 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %486, i32 %487, i32 %488, i64 %489)
  br label %610

491:                                              ; preds = %315
  %492 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %493 = load i32, i32* @RTXAGC_B_NSS1INDEX3_NSS1INDEX0, align 4
  %494 = load i32, i32* @MASKBYTE1, align 4
  %495 = load i64, i64* %6, align 8
  %496 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %492, i32 %493, i32 %494, i64 %495)
  br label %610

497:                                              ; preds = %315
  %498 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %499 = load i32, i32* @RTXAGC_B_NSS1INDEX3_NSS1INDEX0, align 4
  %500 = load i32, i32* @MASKBYTE2, align 4
  %501 = load i64, i64* %6, align 8
  %502 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %498, i32 %499, i32 %500, i64 %501)
  br label %610

503:                                              ; preds = %315
  %504 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %505 = load i32, i32* @RTXAGC_B_NSS1INDEX3_NSS1INDEX0, align 4
  %506 = load i32, i32* @MASKBYTE3, align 4
  %507 = load i64, i64* %6, align 8
  %508 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %504, i32 %505, i32 %506, i64 %507)
  br label %610

509:                                              ; preds = %315
  %510 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %511 = load i32, i32* @RTXAGC_B_NSS1INDEX7_NSS1INDEX4, align 4
  %512 = load i32, i32* @MASKBYTE0, align 4
  %513 = load i64, i64* %6, align 8
  %514 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %510, i32 %511, i32 %512, i64 %513)
  br label %610

515:                                              ; preds = %315
  %516 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %517 = load i32, i32* @RTXAGC_B_NSS1INDEX7_NSS1INDEX4, align 4
  %518 = load i32, i32* @MASKBYTE1, align 4
  %519 = load i64, i64* %6, align 8
  %520 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %516, i32 %517, i32 %518, i64 %519)
  br label %610

521:                                              ; preds = %315
  %522 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %523 = load i32, i32* @RTXAGC_B_NSS1INDEX7_NSS1INDEX4, align 4
  %524 = load i32, i32* @MASKBYTE2, align 4
  %525 = load i64, i64* %6, align 8
  %526 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %522, i32 %523, i32 %524, i64 %525)
  br label %610

527:                                              ; preds = %315
  %528 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %529 = load i32, i32* @RTXAGC_B_NSS1INDEX7_NSS1INDEX4, align 4
  %530 = load i32, i32* @MASKBYTE3, align 4
  %531 = load i64, i64* %6, align 8
  %532 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %528, i32 %529, i32 %530, i64 %531)
  br label %610

533:                                              ; preds = %315
  %534 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %535 = load i32, i32* @RTXAGC_B_NSS2INDEX1_NSS1INDEX8, align 4
  %536 = load i32, i32* @MASKBYTE0, align 4
  %537 = load i64, i64* %6, align 8
  %538 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %534, i32 %535, i32 %536, i64 %537)
  br label %610

539:                                              ; preds = %315
  %540 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %541 = load i32, i32* @RTXAGC_B_NSS2INDEX1_NSS1INDEX8, align 4
  %542 = load i32, i32* @MASKBYTE1, align 4
  %543 = load i64, i64* %6, align 8
  %544 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %540, i32 %541, i32 %542, i64 %543)
  br label %610

545:                                              ; preds = %315
  %546 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %547 = load i32, i32* @RTXAGC_B_NSS2INDEX1_NSS1INDEX8, align 4
  %548 = load i32, i32* @MASKBYTE2, align 4
  %549 = load i64, i64* %6, align 8
  %550 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %546, i32 %547, i32 %548, i64 %549)
  br label %610

551:                                              ; preds = %315
  %552 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %553 = load i32, i32* @RTXAGC_B_NSS2INDEX1_NSS1INDEX8, align 4
  %554 = load i32, i32* @MASKBYTE3, align 4
  %555 = load i64, i64* %6, align 8
  %556 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %552, i32 %553, i32 %554, i64 %555)
  br label %610

557:                                              ; preds = %315
  %558 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %559 = load i32, i32* @RTXAGC_B_NSS2INDEX5_NSS2INDEX2, align 4
  %560 = load i32, i32* @MASKBYTE0, align 4
  %561 = load i64, i64* %6, align 8
  %562 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %558, i32 %559, i32 %560, i64 %561)
  br label %610

563:                                              ; preds = %315
  %564 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %565 = load i32, i32* @RTXAGC_B_NSS2INDEX5_NSS2INDEX2, align 4
  %566 = load i32, i32* @MASKBYTE1, align 4
  %567 = load i64, i64* %6, align 8
  %568 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %564, i32 %565, i32 %566, i64 %567)
  br label %610

569:                                              ; preds = %315
  %570 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %571 = load i32, i32* @RTXAGC_B_NSS2INDEX5_NSS2INDEX2, align 4
  %572 = load i32, i32* @MASKBYTE2, align 4
  %573 = load i64, i64* %6, align 8
  %574 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %570, i32 %571, i32 %572, i64 %573)
  br label %610

575:                                              ; preds = %315
  %576 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %577 = load i32, i32* @RTXAGC_B_NSS2INDEX5_NSS2INDEX2, align 4
  %578 = load i32, i32* @MASKBYTE3, align 4
  %579 = load i64, i64* %6, align 8
  %580 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %576, i32 %577, i32 %578, i64 %579)
  br label %610

581:                                              ; preds = %315
  %582 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %583 = load i32, i32* @RTXAGC_B_NSS2INDEX9_NSS2INDEX6, align 4
  %584 = load i32, i32* @MASKBYTE0, align 4
  %585 = load i64, i64* %6, align 8
  %586 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %582, i32 %583, i32 %584, i64 %585)
  br label %610

587:                                              ; preds = %315
  %588 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %589 = load i32, i32* @RTXAGC_B_NSS2INDEX9_NSS2INDEX6, align 4
  %590 = load i32, i32* @MASKBYTE1, align 4
  %591 = load i64, i64* %6, align 8
  %592 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %588, i32 %589, i32 %590, i64 %591)
  br label %610

593:                                              ; preds = %315
  %594 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %595 = load i32, i32* @RTXAGC_B_NSS2INDEX9_NSS2INDEX6, align 4
  %596 = load i32, i32* @MASKBYTE2, align 4
  %597 = load i64, i64* %6, align 8
  %598 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %594, i32 %595, i32 %596, i64 %597)
  br label %610

599:                                              ; preds = %315
  %600 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %601 = load i32, i32* @RTXAGC_B_NSS2INDEX9_NSS2INDEX6, align 4
  %602 = load i32, i32* @MASKBYTE3, align 4
  %603 = load i64, i64* %6, align 8
  %604 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %600, i32 %601, i32 %602, i64 %603)
  br label %610

605:                                              ; preds = %315
  %606 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %607 = load i32, i32* @COMP_POWER, align 4
  %608 = load i32, i32* @DBG_LOUD, align 4
  %609 = call i32 @RT_TRACE(%struct.rtl_priv* %606, i32 %607, i32 %608, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %610

610:                                              ; preds = %605, %599, %593, %587, %581, %575, %569, %563, %557, %551, %545, %539, %533, %527, %521, %515, %509, %503, %497, %491, %485, %479, %473, %467, %461, %455, %449, %443, %437, %431, %425, %419, %413, %407, %401, %395, %389, %383, %377, %371, %365, %359, %353, %347, %341, %335, %329, %323, %317
  br label %616

611:                                              ; preds = %311
  %612 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %613 = load i32, i32* @COMP_POWER, align 4
  %614 = load i32, i32* @DBG_LOUD, align 4
  %615 = call i32 @RT_TRACE(%struct.rtl_priv* %612, i32 %613, i32 %614, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %616

616:                                              ; preds = %611, %610
  br label %617

617:                                              ; preds = %616, %310
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
