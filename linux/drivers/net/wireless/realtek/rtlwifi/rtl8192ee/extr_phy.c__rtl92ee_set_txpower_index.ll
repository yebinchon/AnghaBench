; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_set_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_set_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RTXAGC_A_CCK1_MCS32 = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@RTXAGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@RTXAGC_A_RATE18_06 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@RTXAGC_A_RATE54_24 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_A_MCS15_MCS12 = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid Rate!!\0A\00", align 1
@RF90_PATH_B = common dso_local global i32 0, align 4
@RTXAGC_B_CCK1_55_MCS32 = common dso_local global i32 0, align 4
@RTXAGC_B_RATE18_06 = common dso_local global i32 0, align 4
@RTXAGC_B_RATE54_24 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS03_MCS00 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS07_MCS04 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS11_MCS08 = common dso_local global i32 0, align 4
@RTXAGC_B_MCS15_MCS12 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid RFPath!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl92ee_set_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_set_txpower_index(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RF90_PATH_A, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %191

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %185 [
    i32 152, label %17
    i32 150, label %23
    i32 146, label %29
    i32 155, label %35
    i32 145, label %41
    i32 144, label %47
    i32 154, label %53
    i32 153, label %59
    i32 151, label %65
    i32 149, label %71
    i32 148, label %77
    i32 147, label %83
    i32 143, label %89
    i32 142, label %95
    i32 135, label %101
    i32 134, label %107
    i32 133, label %113
    i32 132, label %119
    i32 131, label %125
    i32 130, label %131
    i32 129, label %137
    i32 128, label %143
    i32 141, label %149
    i32 140, label %155
    i32 139, label %161
    i32 138, label %167
    i32 137, label %173
    i32 136, label %179
  ]

17:                                               ; preds = %15
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = load i32, i32* @RTXAGC_A_CCK1_MCS32, align 4
  %20 = load i32, i32* @MASKBYTE1, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %18, i32 %19, i32 %20, i32 %21)
  br label %190

23:                                               ; preds = %15
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %26 = load i32, i32* @MASKBYTE1, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %24, i32 %25, i32 %26, i32 %27)
  br label %190

29:                                               ; preds = %15
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %32 = load i32, i32* @MASKBYTE2, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i32 %33)
  br label %190

35:                                               ; preds = %15
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %37 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %38 = load i32, i32* @MASKBYTE3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38, i32 %39)
  br label %190

41:                                               ; preds = %15
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %44 = load i32, i32* @MASKBYTE0, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 %45)
  br label %190

47:                                               ; preds = %15
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %49 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %50 = load i32, i32* @MASKBYTE1, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 %50, i32 %51)
  br label %190

53:                                               ; preds = %15
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %55 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %56 = load i32, i32* @MASKBYTE2, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 %55, i32 %56, i32 %57)
  br label %190

59:                                               ; preds = %15
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %61 = load i32, i32* @RTXAGC_A_RATE18_06, align 4
  %62 = load i32, i32* @MASKBYTE3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i32 %63)
  br label %190

65:                                               ; preds = %15
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %68 = load i32, i32* @MASKBYTE0, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 %67, i32 %68, i32 %69)
  br label %190

71:                                               ; preds = %15
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %73 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %74 = load i32, i32* @MASKBYTE1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74, i32 %75)
  br label %190

77:                                               ; preds = %15
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %79 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %80 = load i32, i32* @MASKBYTE2, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %78, i32 %79, i32 %80, i32 %81)
  br label %190

83:                                               ; preds = %15
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %85 = load i32, i32* @RTXAGC_A_RATE54_24, align 4
  %86 = load i32, i32* @MASKBYTE3, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 %86, i32 %87)
  br label %190

89:                                               ; preds = %15
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %91 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %92 = load i32, i32* @MASKBYTE0, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %90, i32 %91, i32 %92, i32 %93)
  br label %190

95:                                               ; preds = %15
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %97 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %98 = load i32, i32* @MASKBYTE1, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %96, i32 %97, i32 %98, i32 %99)
  br label %190

101:                                              ; preds = %15
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %103 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %104 = load i32, i32* @MASKBYTE2, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %102, i32 %103, i32 %104, i32 %105)
  br label %190

107:                                              ; preds = %15
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %109 = load i32, i32* @RTXAGC_A_MCS03_MCS00, align 4
  %110 = load i32, i32* @MASKBYTE3, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i32 %111)
  br label %190

113:                                              ; preds = %15
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %115 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %116 = load i32, i32* @MASKBYTE0, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 %116, i32 %117)
  br label %190

119:                                              ; preds = %15
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %121 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %122 = load i32, i32* @MASKBYTE1, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %120, i32 %121, i32 %122, i32 %123)
  br label %190

125:                                              ; preds = %15
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %127 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %128 = load i32, i32* @MASKBYTE2, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %126, i32 %127, i32 %128, i32 %129)
  br label %190

131:                                              ; preds = %15
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %133 = load i32, i32* @RTXAGC_A_MCS07_MCS04, align 4
  %134 = load i32, i32* @MASKBYTE3, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %132, i32 %133, i32 %134, i32 %135)
  br label %190

137:                                              ; preds = %15
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %139 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %140 = load i32, i32* @MASKBYTE0, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %138, i32 %139, i32 %140, i32 %141)
  br label %190

143:                                              ; preds = %15
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %145 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %146 = load i32, i32* @MASKBYTE1, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %144, i32 %145, i32 %146, i32 %147)
  br label %190

149:                                              ; preds = %15
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %151 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %152 = load i32, i32* @MASKBYTE2, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %150, i32 %151, i32 %152, i32 %153)
  br label %190

155:                                              ; preds = %15
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %157 = load i32, i32* @RTXAGC_A_MCS11_MCS08, align 4
  %158 = load i32, i32* @MASKBYTE3, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %156, i32 %157, i32 %158, i32 %159)
  br label %190

161:                                              ; preds = %15
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %163 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %164 = load i32, i32* @MASKBYTE0, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %162, i32 %163, i32 %164, i32 %165)
  br label %190

167:                                              ; preds = %15
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %169 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %170 = load i32, i32* @MASKBYTE1, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %168, i32 %169, i32 %170, i32 %171)
  br label %190

173:                                              ; preds = %15
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %175 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %176 = load i32, i32* @MASKBYTE2, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %174, i32 %175, i32 %176, i32 %177)
  br label %190

179:                                              ; preds = %15
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %181 = load i32, i32* @RTXAGC_A_MCS15_MCS12, align 4
  %182 = load i32, i32* @MASKBYTE3, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %180, i32 %181, i32 %182, i32 %183)
  br label %190

185:                                              ; preds = %15
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %187 = load i32, i32* @COMP_POWER, align 4
  %188 = load i32, i32* @DBG_LOUD, align 4
  %189 = call i32 @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %190

190:                                              ; preds = %185, %179, %173, %167, %161, %155, %149, %143, %137, %131, %125, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17
  br label %377

191:                                              ; preds = %4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @RF90_PATH_B, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %371

195:                                              ; preds = %191
  %196 = load i32, i32* %8, align 4
  switch i32 %196, label %365 [
    i32 152, label %197
    i32 150, label %203
    i32 146, label %209
    i32 155, label %215
    i32 145, label %221
    i32 144, label %227
    i32 154, label %233
    i32 153, label %239
    i32 151, label %245
    i32 149, label %251
    i32 148, label %257
    i32 147, label %263
    i32 143, label %269
    i32 142, label %275
    i32 135, label %281
    i32 134, label %287
    i32 133, label %293
    i32 132, label %299
    i32 131, label %305
    i32 130, label %311
    i32 129, label %317
    i32 128, label %323
    i32 141, label %329
    i32 140, label %335
    i32 139, label %341
    i32 138, label %347
    i32 137, label %353
    i32 136, label %359
  ]

197:                                              ; preds = %195
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %199 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %200 = load i32, i32* @MASKBYTE1, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %198, i32 %199, i32 %200, i32 %201)
  br label %370

203:                                              ; preds = %195
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %205 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %206 = load i32, i32* @MASKBYTE2, align 4
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %204, i32 %205, i32 %206, i32 %207)
  br label %370

209:                                              ; preds = %195
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %211 = load i32, i32* @RTXAGC_B_CCK1_55_MCS32, align 4
  %212 = load i32, i32* @MASKBYTE3, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %210, i32 %211, i32 %212, i32 %213)
  br label %370

215:                                              ; preds = %195
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %217 = load i32, i32* @RTXAGC_B_CCK11_A_CCK2_11, align 4
  %218 = load i32, i32* @MASKBYTE0, align 4
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %216, i32 %217, i32 %218, i32 %219)
  br label %370

221:                                              ; preds = %195
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %223 = load i32, i32* @RTXAGC_B_RATE18_06, align 4
  %224 = load i32, i32* @MASKBYTE0, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %222, i32 %223, i32 %224, i32 %225)
  br label %370

227:                                              ; preds = %195
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %229 = load i32, i32* @RTXAGC_B_RATE18_06, align 4
  %230 = load i32, i32* @MASKBYTE1, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %228, i32 %229, i32 %230, i32 %231)
  br label %370

233:                                              ; preds = %195
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %235 = load i32, i32* @RTXAGC_B_RATE18_06, align 4
  %236 = load i32, i32* @MASKBYTE2, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %234, i32 %235, i32 %236, i32 %237)
  br label %370

239:                                              ; preds = %195
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %241 = load i32, i32* @RTXAGC_B_RATE18_06, align 4
  %242 = load i32, i32* @MASKBYTE3, align 4
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %240, i32 %241, i32 %242, i32 %243)
  br label %370

245:                                              ; preds = %195
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %247 = load i32, i32* @RTXAGC_B_RATE54_24, align 4
  %248 = load i32, i32* @MASKBYTE0, align 4
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %246, i32 %247, i32 %248, i32 %249)
  br label %370

251:                                              ; preds = %195
  %252 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %253 = load i32, i32* @RTXAGC_B_RATE54_24, align 4
  %254 = load i32, i32* @MASKBYTE1, align 4
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %252, i32 %253, i32 %254, i32 %255)
  br label %370

257:                                              ; preds = %195
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %259 = load i32, i32* @RTXAGC_B_RATE54_24, align 4
  %260 = load i32, i32* @MASKBYTE2, align 4
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %258, i32 %259, i32 %260, i32 %261)
  br label %370

263:                                              ; preds = %195
  %264 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %265 = load i32, i32* @RTXAGC_B_RATE54_24, align 4
  %266 = load i32, i32* @MASKBYTE3, align 4
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %264, i32 %265, i32 %266, i32 %267)
  br label %370

269:                                              ; preds = %195
  %270 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %271 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %272 = load i32, i32* @MASKBYTE0, align 4
  %273 = load i32, i32* %6, align 4
  %274 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %270, i32 %271, i32 %272, i32 %273)
  br label %370

275:                                              ; preds = %195
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %277 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %278 = load i32, i32* @MASKBYTE1, align 4
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %276, i32 %277, i32 %278, i32 %279)
  br label %370

281:                                              ; preds = %195
  %282 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %283 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %284 = load i32, i32* @MASKBYTE2, align 4
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %282, i32 %283, i32 %284, i32 %285)
  br label %370

287:                                              ; preds = %195
  %288 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %289 = load i32, i32* @RTXAGC_B_MCS03_MCS00, align 4
  %290 = load i32, i32* @MASKBYTE3, align 4
  %291 = load i32, i32* %6, align 4
  %292 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %288, i32 %289, i32 %290, i32 %291)
  br label %370

293:                                              ; preds = %195
  %294 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %295 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %296 = load i32, i32* @MASKBYTE0, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %294, i32 %295, i32 %296, i32 %297)
  br label %370

299:                                              ; preds = %195
  %300 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %301 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %302 = load i32, i32* @MASKBYTE1, align 4
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %300, i32 %301, i32 %302, i32 %303)
  br label %370

305:                                              ; preds = %195
  %306 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %307 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %308 = load i32, i32* @MASKBYTE2, align 4
  %309 = load i32, i32* %6, align 4
  %310 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %306, i32 %307, i32 %308, i32 %309)
  br label %370

311:                                              ; preds = %195
  %312 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %313 = load i32, i32* @RTXAGC_B_MCS07_MCS04, align 4
  %314 = load i32, i32* @MASKBYTE3, align 4
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %312, i32 %313, i32 %314, i32 %315)
  br label %370

317:                                              ; preds = %195
  %318 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %319 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %320 = load i32, i32* @MASKBYTE0, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %318, i32 %319, i32 %320, i32 %321)
  br label %370

323:                                              ; preds = %195
  %324 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %325 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %326 = load i32, i32* @MASKBYTE1, align 4
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %324, i32 %325, i32 %326, i32 %327)
  br label %370

329:                                              ; preds = %195
  %330 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %331 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %332 = load i32, i32* @MASKBYTE2, align 4
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %330, i32 %331, i32 %332, i32 %333)
  br label %370

335:                                              ; preds = %195
  %336 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %337 = load i32, i32* @RTXAGC_B_MCS11_MCS08, align 4
  %338 = load i32, i32* @MASKBYTE3, align 4
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %336, i32 %337, i32 %338, i32 %339)
  br label %370

341:                                              ; preds = %195
  %342 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %343 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %344 = load i32, i32* @MASKBYTE0, align 4
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %342, i32 %343, i32 %344, i32 %345)
  br label %370

347:                                              ; preds = %195
  %348 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %349 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %350 = load i32, i32* @MASKBYTE1, align 4
  %351 = load i32, i32* %6, align 4
  %352 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %348, i32 %349, i32 %350, i32 %351)
  br label %370

353:                                              ; preds = %195
  %354 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %355 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %356 = load i32, i32* @MASKBYTE2, align 4
  %357 = load i32, i32* %6, align 4
  %358 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %354, i32 %355, i32 %356, i32 %357)
  br label %370

359:                                              ; preds = %195
  %360 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %361 = load i32, i32* @RTXAGC_B_MCS15_MCS12, align 4
  %362 = load i32, i32* @MASKBYTE3, align 4
  %363 = load i32, i32* %6, align 4
  %364 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %360, i32 %361, i32 %362, i32 %363)
  br label %370

365:                                              ; preds = %195
  %366 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %367 = load i32, i32* @COMP_POWER, align 4
  %368 = load i32, i32* @DBG_LOUD, align 4
  %369 = call i32 @RT_TRACE(%struct.rtl_priv* %366, i32 %367, i32 %368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %370

370:                                              ; preds = %365, %359, %353, %347, %341, %335, %329, %323, %317, %311, %305, %299, %293, %287, %281, %275, %269, %263, %257, %251, %245, %239, %233, %227, %221, %215, %209, %203, %197
  br label %376

371:                                              ; preds = %191
  %372 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %373 = load i32, i32* @COMP_POWER, align 4
  %374 = load i32, i32* @DBG_LOUD, align 4
  %375 = call i32 @RT_TRACE(%struct.rtl_priv* %372, i32 %373, i32 %374, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %376

376:                                              ; preds = %371, %370
  br label %377

377:                                              ; preds = %376, %190
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
