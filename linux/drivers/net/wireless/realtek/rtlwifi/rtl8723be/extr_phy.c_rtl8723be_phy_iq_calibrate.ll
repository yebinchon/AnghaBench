; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.rtl_phy }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_phy = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64**, i32 }

@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_AGCRSSITABLE = common dso_local global i32 0, align 4
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@ROFDM0_RXIQEXTANTA = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@IQK_MATRIX_REG_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_phy_iq_calibrate(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca [4 x [8 x i64]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [9 x i32], align 16
  %26 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  store %struct.rtl_priv* %28, %struct.rtl_priv** %5, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  store %struct.rtl_phy* %30, %struct.rtl_phy** %6, align 8
  store i64 0, i64* %21, align 8
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %32 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %45, i64 1
  %48 = load i32, i32* @ROFDM0_RXIQEXTANTA, align 4
  store i32 %48, i32* %47, align 4
  store i32 0, i32* %26, align 4
  %49 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %50 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  br label %372

54:                                               ; preds = %2
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %70 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %71 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rtl8723_phy_reload_adda_registers(%struct.ieee80211_hw* %68, i32* %69, i32 %72, i32 9)
  br label %361

74:                                               ; preds = %54
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i32, i32* @MASKDWORD, align 4
  %77 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %75, i32 2376, i32 %76)
  store i32 %77, i32* %26, align 4
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %98, %74
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %82, i64 0, i64 %84
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 1
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i64], [8 x i64]* %86, i64 0, i64 %88
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 2
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i64], [8 x i64]* %90, i64 0, i64 %92
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 3
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %94, i64 0, i64 %96
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %78

101:                                              ; preds = %78
  store i32 255, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %164, %101
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %167

105:                                              ; preds = %102
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %107 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %108 = bitcast [8 x i64]* %107 to i64**
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @_rtl8723be_phy_iq_calibrate(%struct.ieee80211_hw* %106, i64** %108, i32 %109, i32 1)
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %115 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %116 = bitcast [8 x i64]* %115 to i64**
  %117 = call i32 @_rtl8723be_phy_simularity_compare(%struct.ieee80211_hw* %114, i64** %116, i32 0, i32 1)
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  store i32 0, i32* %9, align 4
  br label %167

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %105
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %163

125:                                              ; preds = %122
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %127 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %128 = bitcast [8 x i64]* %127 to i64**
  %129 = call i32 @_rtl8723be_phy_simularity_compare(%struct.ieee80211_hw* %126, i64** %128, i32 0, i32 2)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %9, align 4
  br label %167

133:                                              ; preds = %125
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %135 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %136 = bitcast [8 x i64]* %135 to i64**
  %137 = call i32 @_rtl8723be_phy_simularity_compare(%struct.ieee80211_hw* %134, i64** %136, i32 1, i32 2)
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %24, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 1, i32* %9, align 4
  br label %162

141:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %153, %141
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 8
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 3
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i64], [8 x i64]* %146, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %21, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %21, align 8
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %142

156:                                              ; preds = %142
  %157 = load i64, i64* %21, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 3, i32* %9, align 4
  br label %161

160:                                              ; preds = %156
  store i32 255, i32* %9, align 4
  br label %161

161:                                              ; preds = %160, %159
  br label %162

162:                                              ; preds = %161, %140
  br label %163

163:                                              ; preds = %162, %122
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %102

167:                                              ; preds = %132, %120, %102
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %212, %167
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %215

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %173
  %175 = getelementptr inbounds [8 x i64], [8 x i64]* %174, i64 0, i64 0
  %176 = load i64, i64* %175, align 16
  store i64 %176, i64* %13, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %178
  %180 = getelementptr inbounds [8 x i64], [8 x i64]* %179, i64 0, i64 1
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %14, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %183
  %185 = getelementptr inbounds [8 x i64], [8 x i64]* %184, i64 0, i64 2
  %186 = load i64, i64* %185, align 16
  store i64 %186, i64* %15, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %188
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* %189, i64 0, i64 3
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %16, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %193
  %195 = getelementptr inbounds [8 x i64], [8 x i64]* %194, i64 0, i64 4
  %196 = load i64, i64* %195, align 16
  store i64 %196, i64* %17, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %198
  %200 = getelementptr inbounds [8 x i64], [8 x i64]* %199, i64 0, i64 5
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %18, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %203
  %205 = getelementptr inbounds [8 x i64], [8 x i64]* %204, i64 0, i64 6
  %206 = load i64, i64* %205, align 16
  store i64 %206, i64* %19, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %208
  %210 = getelementptr inbounds [8 x i64], [8 x i64]* %209, i64 0, i64 7
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %20, align 8
  br label %212

212:                                              ; preds = %171
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %168

215:                                              ; preds = %168
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 255
  br i1 %217, label %218, label %271

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %220
  %222 = getelementptr inbounds [8 x i64], [8 x i64]* %221, i64 0, i64 0
  %223 = load i64, i64* %222, align 16
  store i64 %223, i64* %13, align 8
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %226 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %228
  %230 = getelementptr inbounds [8 x i64], [8 x i64]* %229, i64 0, i64 1
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %14, align 8
  %232 = load i64, i64* %14, align 8
  %233 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %234 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %233, i32 0, i32 2
  store i64 %232, i64* %234, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %236
  %238 = getelementptr inbounds [8 x i64], [8 x i64]* %237, i64 0, i64 2
  %239 = load i64, i64* %238, align 16
  store i64 %239, i64* %15, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %241
  %243 = getelementptr inbounds [8 x i64], [8 x i64]* %242, i64 0, i64 3
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %16, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %246
  %248 = getelementptr inbounds [8 x i64], [8 x i64]* %247, i64 0, i64 4
  %249 = load i64, i64* %248, align 16
  store i64 %249, i64* %17, align 8
  %250 = load i64, i64* %17, align 8
  %251 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %252 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %251, i32 0, i32 3
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %254
  %256 = getelementptr inbounds [8 x i64], [8 x i64]* %255, i64 0, i64 5
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %18, align 8
  %258 = load i64, i64* %18, align 8
  %259 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %260 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %259, i32 0, i32 4
  store i64 %258, i64* %260, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %262
  %264 = getelementptr inbounds [8 x i64], [8 x i64]* %263, i64 0, i64 6
  %265 = load i64, i64* %264, align 16
  store i64 %265, i64* %19, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %267
  %269 = getelementptr inbounds [8 x i64], [8 x i64]* %268, i64 0, i64 7
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %20, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %280

271:                                              ; preds = %215
  %272 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %273 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %272, i32 0, i32 1
  store i64 256, i64* %273, align 8
  %274 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %275 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %274, i32 0, i32 3
  store i64 256, i64* %275, align 8
  %276 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %277 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %276, i32 0, i32 2
  store i64 0, i64* %277, align 8
  %278 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %279 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %278, i32 0, i32 4
  store i64 0, i64* %279, align 8
  br label %280

280:                                              ; preds = %271, %218
  %281 = load i64, i64* %13, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %280
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %285 = load i32, i32* %11, align 4
  %286 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %287 = bitcast [8 x i64]* %286 to i64**
  %288 = load i32, i32* %9, align 4
  %289 = load i64, i64* %15, align 8
  %290 = icmp eq i64 %289, 0
  %291 = zext i1 %290 to i32
  %292 = call i32 @rtl8723_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw* %284, i32 %285, i64** %287, i32 %288, i32 %291)
  br label %293

293:                                              ; preds = %283, %280
  %294 = load i64, i64* %17, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %298 = load i32, i32* %12, align 4
  %299 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %300 = bitcast [8 x i64]* %299 to i64**
  %301 = load i32, i32* %9, align 4
  %302 = load i64, i64* %19, align 8
  %303 = icmp eq i64 %302, 0
  %304 = zext i1 %303 to i32
  %305 = call i32 @_rtl8723be_phy_path_b_fill_iqk_matrix(%struct.ieee80211_hw* %297, i32 %298, i64** %300, i32 %301, i32 %304)
  br label %306

306:                                              ; preds = %296, %293
  %307 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %308 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @_get_right_chnl_place_for_iqk(i32 %309)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp slt i32 %311, 4
  br i1 %312, label %313, label %350

313:                                              ; preds = %306
  store i32 0, i32* %8, align 4
  br label %314

314:                                              ; preds = %339, %313
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* @IQK_MATRIX_REG_NUM, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %342

318:                                              ; preds = %314
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %320
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [8 x i64], [8 x i64]* %321, i64 0, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %327 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %326, i32 0, i32 6
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 0
  %333 = load i64**, i64*** %332, align 8
  %334 = getelementptr inbounds i64*, i64** %333, i64 0
  %335 = load i64*, i64** %334, align 8
  %336 = load i32, i32* %8, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %335, i64 %337
  store i64 %325, i64* %338, align 8
  br label %339

339:                                              ; preds = %318
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  br label %314

342:                                              ; preds = %314
  %343 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %344 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %343, i32 0, i32 6
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 1
  store i32 1, i32* %349, align 8
  br label %350

350:                                              ; preds = %342, %306
  %351 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %352 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 0
  %353 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %354 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @rtl8723_save_adda_registers(%struct.ieee80211_hw* %351, i32* %352, i32 %355, i32 9)
  %357 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %358 = load i32, i32* @MASKDWORD, align 4
  %359 = load i32, i32* %26, align 4
  %360 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %357, i32 2376, i32 %358, i32 %359)
  br label %361

361:                                              ; preds = %350, %67
  %362 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %363 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = call i32 @spin_lock(i32* %364)
  %366 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %367 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %366, i32 0, i32 0
  store i32 0, i32* %367, align 8
  %368 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %369 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = call i32 @spin_unlock(i32* %370)
  br label %372

372:                                              ; preds = %361, %53
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtl8723_phy_reload_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl8723be_phy_iq_calibrate(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl8723be_phy_simularity_compare(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @rtl8723_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @_rtl8723be_phy_path_b_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @_get_right_chnl_place_for_iqk(i32) #1

declare dso_local i32 @rtl8723_save_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
