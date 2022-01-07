; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_iq_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c_rtl88e_phy_iq_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64**, i32 }

@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_AGCRSSITABLE = common dso_local global i32 0, align 4
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@ROFDM0_RXIQEXTANTA = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i64 0, align 8
@IQK_MATRIX_REG_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88e_phy_iq_calibrate(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %24 = alloca [9 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %5, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  store %struct.rtl_phy* %28, %struct.rtl_phy** %6, align 8
  store i64 0, i64* %20, align 8
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %24, i64 0, i64 0
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
  %42 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @ROFDM0_RXIQEXTANTA, align 4
  store i32 %46, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %2
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %24, i64 0, i64 0
  %52 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %53 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @_rtl88e_phy_reload_adda_registers(%struct.ieee80211_hw* %50, i32* %51, i32 %54, i32 9)
  br label %327

56:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i64], [8 x i64]* %61, i64 0, i64 %63
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 1
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i64], [8 x i64]* %65, i64 0, i64 %67
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 2
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %69, i64 0, i64 %71
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 3
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i64], [8 x i64]* %73, i64 0, i64 %75
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %57

80:                                               ; preds = %57
  store i32 255, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %155, %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %158

84:                                               ; preds = %81
  %85 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %86 = call i64 @get_rf_type(%struct.rtl_phy* %85)
  %87 = load i64, i64* @RF_2T2R, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %91 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %92 = bitcast [8 x i64]* %91 to i64**
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @_rtl88e_phy_iq_calibrate(%struct.ieee80211_hw* %90, i64** %92, i32 %93, i32 1)
  br label %101

95:                                               ; preds = %84
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %97 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %98 = bitcast [8 x i64]* %97 to i64**
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @_rtl88e_phy_iq_calibrate(%struct.ieee80211_hw* %96, i64** %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %107 = bitcast [8 x i64]* %106 to i64**
  %108 = call i32 @_rtl88e_phy_simularity_compare(%struct.ieee80211_hw* %105, i64** %107, i32 0, i32 1)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %158

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %101
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %118 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %119 = bitcast [8 x i64]* %118 to i64**
  %120 = call i32 @_rtl88e_phy_simularity_compare(%struct.ieee80211_hw* %117, i64** %119, i32 0, i32 2)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %158

124:                                              ; preds = %116
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %126 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %127 = bitcast [8 x i64]* %126 to i64**
  %128 = call i32 @_rtl88e_phy_simularity_compare(%struct.ieee80211_hw* %125, i64** %127, i32 1, i32 2)
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 1, i32* %9, align 4
  br label %153

132:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 8
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 3
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %137, i64 0, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %20, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %20, align 8
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %133

147:                                              ; preds = %133
  %148 = load i64, i64* %20, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 3, i32* %9, align 4
  br label %152

151:                                              ; preds = %147
  store i32 255, i32* %9, align 4
  br label %152

152:                                              ; preds = %151, %150
  br label %153

153:                                              ; preds = %152, %131
  br label %154

154:                                              ; preds = %153, %113
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %81

158:                                              ; preds = %123, %111, %81
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %203, %158
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %206

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %164
  %166 = getelementptr inbounds [8 x i64], [8 x i64]* %165, i64 0, i64 0
  %167 = load i64, i64* %166, align 16
  store i64 %167, i64* %12, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %169
  %171 = getelementptr inbounds [8 x i64], [8 x i64]* %170, i64 0, i64 1
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %13, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %174
  %176 = getelementptr inbounds [8 x i64], [8 x i64]* %175, i64 0, i64 2
  %177 = load i64, i64* %176, align 16
  store i64 %177, i64* %14, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %179
  %181 = getelementptr inbounds [8 x i64], [8 x i64]* %180, i64 0, i64 3
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %15, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %184
  %186 = getelementptr inbounds [8 x i64], [8 x i64]* %185, i64 0, i64 4
  %187 = load i64, i64* %186, align 16
  store i64 %187, i64* %16, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %189
  %191 = getelementptr inbounds [8 x i64], [8 x i64]* %190, i64 0, i64 5
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %17, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %194
  %196 = getelementptr inbounds [8 x i64], [8 x i64]* %195, i64 0, i64 6
  %197 = load i64, i64* %196, align 16
  store i64 %197, i64* %18, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %199
  %201 = getelementptr inbounds [8 x i64], [8 x i64]* %200, i64 0, i64 7
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %19, align 8
  br label %203

203:                                              ; preds = %162
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %159

206:                                              ; preds = %159
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 255
  br i1 %208, label %209, label %262

209:                                              ; preds = %206
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %211
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %212, i64 0, i64 0
  %214 = load i64, i64* %213, align 16
  store i64 %214, i64* %12, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %216
  %218 = getelementptr inbounds [8 x i64], [8 x i64]* %217, i64 0, i64 1
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %13, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %221
  %223 = getelementptr inbounds [8 x i64], [8 x i64]* %222, i64 0, i64 2
  %224 = load i64, i64* %223, align 16
  store i64 %224, i64* %14, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %226
  %228 = getelementptr inbounds [8 x i64], [8 x i64]* %227, i64 0, i64 3
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %15, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %231
  %233 = getelementptr inbounds [8 x i64], [8 x i64]* %232, i64 0, i64 4
  %234 = load i64, i64* %233, align 16
  store i64 %234, i64* %16, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %236
  %238 = getelementptr inbounds [8 x i64], [8 x i64]* %237, i64 0, i64 5
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %17, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %241
  %243 = getelementptr inbounds [8 x i64], [8 x i64]* %242, i64 0, i64 6
  %244 = load i64, i64* %243, align 16
  store i64 %244, i64* %18, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %246
  %248 = getelementptr inbounds [8 x i64], [8 x i64]* %247, i64 0, i64 7
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %19, align 8
  %250 = load i64, i64* %16, align 8
  %251 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %252 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* %17, align 8
  %254 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %255 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* %12, align 8
  %257 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %258 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %257, i32 0, i32 2
  store i64 %256, i64* %258, align 8
  %259 = load i64, i64* %13, align 8
  %260 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %261 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %260, i32 0, i32 3
  store i64 %259, i64* %261, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %271

262:                                              ; preds = %206
  %263 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %264 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %263, i32 0, i32 2
  store i64 256, i64* %264, align 8
  %265 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %266 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %265, i32 0, i32 0
  store i64 256, i64* %266, align 8
  %267 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %268 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %267, i32 0, i32 3
  store i64 0, i64* %268, align 8
  %269 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %270 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %269, i32 0, i32 1
  store i64 0, i64* %270, align 8
  br label %271

271:                                              ; preds = %262, %209
  %272 = load i64, i64* %12, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %271
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %276 = load i32, i32* %10, align 4
  %277 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 0
  %278 = bitcast [8 x i64]* %277 to i64**
  %279 = load i32, i32* %9, align 4
  %280 = load i64, i64* %14, align 8
  %281 = icmp eq i64 %280, 0
  %282 = zext i1 %281 to i32
  %283 = call i32 @_rtl88e_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw* %275, i32 %276, i64** %278, i32 %279, i32 %282)
  br label %284

284:                                              ; preds = %274, %271
  %285 = load i32, i32* %9, align 4
  %286 = icmp ne i32 %285, 255
  br i1 %286, label %287, label %320

287:                                              ; preds = %284
  store i32 0, i32* %8, align 4
  br label %288

288:                                              ; preds = %311, %287
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @IQK_MATRIX_REG_NUM, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %288
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %7, i64 0, i64 %294
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x i64], [8 x i64]* %295, i64 0, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %301 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %300, i32 0, i32 5
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i64**, i64*** %304, align 8
  %306 = getelementptr inbounds i64*, i64** %305, i64 0
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  store i64 %299, i64* %310, align 8
  br label %311

311:                                              ; preds = %292
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %288

314:                                              ; preds = %288
  %315 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %316 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %315, i32 0, i32 5
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  store i32 1, i32* %319, align 8
  br label %320

320:                                              ; preds = %314, %284
  %321 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %322 = getelementptr inbounds [9 x i32], [9 x i32]* %24, i64 0, i64 0
  %323 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %324 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @_rtl88e_phy_save_adda_registers(%struct.ieee80211_hw* %321, i32* %322, i32 %325, i32 9)
  br label %327

327:                                              ; preds = %320, %49
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl88e_phy_reload_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @_rtl88e_phy_iq_calibrate(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl88e_phy_simularity_compare(%struct.ieee80211_hw*, i64**, i32, i32) #1

declare dso_local i32 @_rtl88e_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i32 @_rtl88e_phy_save_adda_registers(%struct.ieee80211_hw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
