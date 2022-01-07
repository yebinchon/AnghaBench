; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c_rtl92c_phy_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c_rtl92c_phy_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64, i64, i64, i32 }
%struct.rtl_hal = type { i32 }

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
define dso_local void @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca [4 x [8 x i64]], align 16
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
  %25 = alloca [10 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  store %struct.rtl_priv* %27, %struct.rtl_priv** %5, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 0
  store %struct.rtl_phy* %29, %struct.rtl_phy** %6, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %30)
  %32 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %31)
  store %struct.rtl_hal* %32, %struct.rtl_hal** %7, align 8
  store i64 0, i64* %21, align 8
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 0, i64 0
  %34 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @ROFDM0_XCTXIQIMBALANCE, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %45, i64 1
  %48 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds i32, i32* %47, i64 1
  %50 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds i32, i32* %49, i64 1
  %52 = load i32, i32* @ROFDM0_RXIQEXTANTA, align 4
  store i32 %52, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %2
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 0, i64 0
  %58 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %59 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @_rtl92c_phy_reload_adda_registers(%struct.ieee80211_hw* %56, i32* %57, i32 %60, i32 10)
  br label %314

62:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %83, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %67, i64 0, i64 %69
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 1
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %71, i64 0, i64 %73
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 2
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %75, i64 0, i64 %77
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 3
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i64], [8 x i64]* %79, i64 0, i64 %81
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %63

86:                                               ; preds = %63
  store i32 255, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %162, %86
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %165

90:                                               ; preds = %87
  %91 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %92 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_92C_SERIAL(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %99 = bitcast [8 x i64]* %98 to i64**
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @_rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %97, i64** %99, i32 %100, i32 1)
  br label %108

102:                                              ; preds = %90
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %104 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %105 = bitcast [8 x i64]* %104 to i64**
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @_rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %103, i64** %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %114 = bitcast [8 x i64]* %113 to i64**
  %115 = call i32 @_rtl92c_phy_simularity_compare(%struct.ieee80211_hw* %112, i64** %114, i32 0, i32 1)
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %165

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %161

123:                                              ; preds = %120
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %126 = bitcast [8 x i64]* %125 to i64**
  %127 = call i32 @_rtl92c_phy_simularity_compare(%struct.ieee80211_hw* %124, i64** %126, i32 0, i32 2)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %10, align 4
  br label %165

131:                                              ; preds = %123
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %133 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %134 = bitcast [8 x i64]* %133 to i64**
  %135 = call i32 @_rtl92c_phy_simularity_compare(%struct.ieee80211_hw* %132, i64** %134, i32 1, i32 2)
  store i32 %135, i32* %24, align 4
  %136 = load i32, i32* %24, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 1, i32* %10, align 4
  br label %160

139:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 3
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i64], [8 x i64]* %144, i64 0, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %21, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %21, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %140

154:                                              ; preds = %140
  %155 = load i64, i64* %21, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 3, i32* %10, align 4
  br label %159

158:                                              ; preds = %154
  store i32 255, i32* %10, align 4
  br label %159

159:                                              ; preds = %158, %157
  br label %160

160:                                              ; preds = %159, %138
  br label %161

161:                                              ; preds = %160, %120
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %87

165:                                              ; preds = %130, %118, %87
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %210, %165
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %213

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %171
  %173 = getelementptr inbounds [8 x i64], [8 x i64]* %172, i64 0, i64 0
  %174 = load i64, i64* %173, align 16
  store i64 %174, i64* %13, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %176
  %178 = getelementptr inbounds [8 x i64], [8 x i64]* %177, i64 0, i64 1
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %14, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %181
  %183 = getelementptr inbounds [8 x i64], [8 x i64]* %182, i64 0, i64 2
  %184 = load i64, i64* %183, align 16
  store i64 %184, i64* %15, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %186
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %187, i64 0, i64 3
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %16, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %191
  %193 = getelementptr inbounds [8 x i64], [8 x i64]* %192, i64 0, i64 4
  %194 = load i64, i64* %193, align 16
  store i64 %194, i64* %17, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %196
  %198 = getelementptr inbounds [8 x i64], [8 x i64]* %197, i64 0, i64 5
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %18, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %201
  %203 = getelementptr inbounds [8 x i64], [8 x i64]* %202, i64 0, i64 6
  %204 = load i64, i64* %203, align 16
  store i64 %204, i64* %19, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %206
  %208 = getelementptr inbounds [8 x i64], [8 x i64]* %207, i64 0, i64 7
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %20, align 8
  br label %210

210:                                              ; preds = %169
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %166

213:                                              ; preds = %166
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 255
  br i1 %215, label %216, label %265

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %218
  %220 = getelementptr inbounds [8 x i64], [8 x i64]* %219, i64 0, i64 0
  %221 = load i64, i64* %220, align 16
  store i64 %221, i64* %13, align 8
  %222 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %223 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %225
  %227 = getelementptr inbounds [8 x i64], [8 x i64]* %226, i64 0, i64 1
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %14, align 8
  %229 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %230 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %232
  %234 = getelementptr inbounds [8 x i64], [8 x i64]* %233, i64 0, i64 2
  %235 = load i64, i64* %234, align 16
  store i64 %235, i64* %15, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %237
  %239 = getelementptr inbounds [8 x i64], [8 x i64]* %238, i64 0, i64 3
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %16, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %242
  %244 = getelementptr inbounds [8 x i64], [8 x i64]* %243, i64 0, i64 4
  %245 = load i64, i64* %244, align 16
  store i64 %245, i64* %17, align 8
  %246 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %247 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %249
  %251 = getelementptr inbounds [8 x i64], [8 x i64]* %250, i64 0, i64 5
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %18, align 8
  %253 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %254 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %253, i32 0, i32 3
  store i64 %252, i64* %254, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %256
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %257, i64 0, i64 6
  %259 = load i64, i64* %258, align 16
  store i64 %259, i64* %19, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 %261
  %263 = getelementptr inbounds [8 x i64], [8 x i64]* %262, i64 0, i64 7
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %20, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %274

265:                                              ; preds = %213
  %266 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %267 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %266, i32 0, i32 2
  store i64 256, i64* %267, align 8
  %268 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %269 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %268, i32 0, i32 0
  store i64 256, i64* %269, align 8
  %270 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %271 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %270, i32 0, i32 3
  store i64 0, i64* %271, align 8
  %272 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %273 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %272, i32 0, i32 1
  store i64 0, i64* %273, align 8
  br label %274

274:                                              ; preds = %265, %216
  %275 = load i64, i64* %13, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %279 = load i32, i32* %11, align 4
  %280 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %281 = bitcast [8 x i64]* %280 to i64**
  %282 = load i32, i32* %10, align 4
  %283 = load i64, i64* %15, align 8
  %284 = icmp eq i64 %283, 0
  %285 = zext i1 %284 to i32
  %286 = call i32 @_rtl92c_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw* %278, i32 %279, i64** %281, i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %277, %274
  %288 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %289 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @IS_92C_SERIAL(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %307

293:                                              ; preds = %287
  %294 = load i64, i64* %17, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %298 = load i32, i32* %12, align 4
  %299 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %8, i64 0, i64 0
  %300 = bitcast [8 x i64]* %299 to i64**
  %301 = load i32, i32* %10, align 4
  %302 = load i64, i64* %19, align 8
  %303 = icmp eq i64 %302, 0
  %304 = zext i1 %303 to i32
  %305 = call i32 @_rtl92c_phy_path_b_fill_iqk_matrix(%struct.ieee80211_hw* %297, i32 %298, i64** %300, i32 %301, i32 %304)
  br label %306

306:                                              ; preds = %296, %293
  br label %307

307:                                              ; preds = %306, %287
  %308 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %309 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 0, i64 0
  %310 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %311 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @_rtl92c_phy_save_adda_registers(%struct.ieee80211_hw* %308, i32* %309, i32 %312, i32 10)
  br label %314

314:                                              ; preds = %307, %55
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92c_phy_reload_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @_rtl92c_phy_iq_calibrate(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_simularity_compare(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_path_b_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_save_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
