; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64, i64, i64, i32 }

@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_AGCRSSITABLE = common dso_local global i32 0, align 4
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@ROFDM0_RXIQEXTANTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_phy_iq_calibrate(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca [4 x [8 x i64]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [10 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %5, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  store %struct.rtl_phy* %28, %struct.rtl_phy** %6, align 8
  store i64 0, i64* %20, align 8
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %30 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @ROFDM0_XCTXIQIMBALANCE, align 4
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
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %2
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %54 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %55 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rtl8723_phy_reload_adda_registers(%struct.ieee80211_hw* %52, i32* %53, i32 %56, i32 10)
  br label %277

58:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %79, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %63, i64 0, i64 %65
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 1
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %67, i64 0, i64 %69
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 2
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %71, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 3
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %75, i64 0, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %59

82:                                               ; preds = %59
  store i32 255, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %145, %82
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %148

86:                                               ; preds = %83
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %88 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %89 = bitcast [8 x i64]* %88 to i64**
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @_rtl8723e_phy_iq_calibrate(%struct.ieee80211_hw* %87, i64** %89, i32 %90, i32 0)
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %96 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %97 = bitcast [8 x i64]* %96 to i64**
  %98 = call i32 @_rtl8723e_phy_simularity_compare(%struct.ieee80211_hw* %95, i64** %97, i32 0, i32 1)
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  br label %148

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %144

106:                                              ; preds = %103
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %109 = bitcast [8 x i64]* %108 to i64**
  %110 = call i32 @_rtl8723e_phy_simularity_compare(%struct.ieee80211_hw* %107, i64** %109, i32 0, i32 2)
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %148

114:                                              ; preds = %106
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %116 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %117 = bitcast [8 x i64]* %116 to i64**
  %118 = call i32 @_rtl8723e_phy_simularity_compare(%struct.ieee80211_hw* %115, i64** %117, i32 1, i32 2)
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %23, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 1, i32* %9, align 4
  br label %143

122:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %134, %122
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 8
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 3
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x i64], [8 x i64]* %127, i64 0, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %20, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %20, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %123

137:                                              ; preds = %123
  %138 = load i64, i64* %20, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 3, i32* %9, align 4
  br label %142

141:                                              ; preds = %137
  store i32 255, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %140
  br label %143

143:                                              ; preds = %142, %121
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %83

148:                                              ; preds = %113, %101, %83
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %193, %148
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %196

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %154
  %156 = getelementptr inbounds [8 x i64], [8 x i64]* %155, i64 0, i64 0
  %157 = load i64, i64* %156, align 16
  store i64 %157, i64* %12, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %159
  %161 = getelementptr inbounds [8 x i64], [8 x i64]* %160, i64 0, i64 1
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %13, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %164
  %166 = getelementptr inbounds [8 x i64], [8 x i64]* %165, i64 0, i64 2
  %167 = load i64, i64* %166, align 16
  store i64 %167, i64* %14, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %169
  %171 = getelementptr inbounds [8 x i64], [8 x i64]* %170, i64 0, i64 3
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %15, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %174
  %176 = getelementptr inbounds [8 x i64], [8 x i64]* %175, i64 0, i64 4
  %177 = load i64, i64* %176, align 16
  store i64 %177, i64* %16, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %179
  %181 = getelementptr inbounds [8 x i64], [8 x i64]* %180, i64 0, i64 5
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %17, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %184
  %186 = getelementptr inbounds [8 x i64], [8 x i64]* %185, i64 0, i64 6
  %187 = load i64, i64* %186, align 16
  store i64 %187, i64* %18, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %189
  %191 = getelementptr inbounds [8 x i64], [8 x i64]* %190, i64 0, i64 7
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %19, align 8
  br label %193

193:                                              ; preds = %152
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %149

196:                                              ; preds = %149
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 255
  br i1 %198, label %199, label %248

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %201
  %203 = getelementptr inbounds [8 x i64], [8 x i64]* %202, i64 0, i64 0
  %204 = load i64, i64* %203, align 16
  store i64 %204, i64* %12, align 8
  %205 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %206 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %205, i32 0, i32 0
  store i64 %204, i64* %206, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %208
  %210 = getelementptr inbounds [8 x i64], [8 x i64]* %209, i64 0, i64 1
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %13, align 8
  %212 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %213 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %215
  %217 = getelementptr inbounds [8 x i64], [8 x i64]* %216, i64 0, i64 2
  %218 = load i64, i64* %217, align 16
  store i64 %218, i64* %14, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %220
  %222 = getelementptr inbounds [8 x i64], [8 x i64]* %221, i64 0, i64 3
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %15, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %225
  %227 = getelementptr inbounds [8 x i64], [8 x i64]* %226, i64 0, i64 4
  %228 = load i64, i64* %227, align 16
  store i64 %228, i64* %16, align 8
  %229 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %230 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %229, i32 0, i32 2
  store i64 %228, i64* %230, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %232
  %234 = getelementptr inbounds [8 x i64], [8 x i64]* %233, i64 0, i64 5
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %17, align 8
  %236 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %237 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %236, i32 0, i32 3
  store i64 %235, i64* %237, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %239
  %241 = getelementptr inbounds [8 x i64], [8 x i64]* %240, i64 0, i64 6
  %242 = load i64, i64* %241, align 16
  store i64 %242, i64* %18, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %244
  %246 = getelementptr inbounds [8 x i64], [8 x i64]* %245, i64 0, i64 7
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %19, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %257

248:                                              ; preds = %196
  %249 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %250 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %249, i32 0, i32 2
  store i64 256, i64* %250, align 8
  %251 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %252 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %251, i32 0, i32 0
  store i64 256, i64* %252, align 8
  %253 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %254 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %253, i32 0, i32 3
  store i64 0, i64* %254, align 8
  %255 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %256 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %255, i32 0, i32 1
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %248, %199
  %258 = load i64, i64* %12, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %262 = load i32, i32* %10, align 4
  %263 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %264 = bitcast [8 x i64]* %263 to i64**
  %265 = load i32, i32* %9, align 4
  %266 = load i64, i64* %14, align 8
  %267 = icmp eq i64 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i32 @rtl8723_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw* %261, i32 %262, i64** %264, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %260, %257
  %271 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %272 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %273 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %274 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @rtl8723_save_adda_registers(%struct.ieee80211_hw* %271, i32* %272, i32 %275, i32 10)
  br label %277

277:                                              ; preds = %270, %51
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723_phy_reload_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

declare dso_local i32 @_rtl8723e_phy_iq_calibrate(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl8723e_phy_simularity_compare(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @rtl8723_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @rtl8723_save_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
