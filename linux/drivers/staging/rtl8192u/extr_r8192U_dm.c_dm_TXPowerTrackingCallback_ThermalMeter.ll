; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_TXPowerTrackingCallback_ThermalMeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_TXPowerTrackingCallback_ThermalMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i64, i64, i64*, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@OFDM_Table_Length = common dso_local global i32 0, align 4
@OFDMSwingTable = common dso_local global i64* null, align 8
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Initial reg0x%x = 0x%x, OFDM_index=0x%x\0A\00", align 1
@rCCK0_TxFilter1 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@CCK_Table_length = common dso_local global i32 0, align 4
@CCKSwingTable_Ch1_Ch13 = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Initial reg0x%x = 0x%x, CCK_index=0x%x\0A\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Readback ThermalMeterA = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Valid ThermalMeterA = %d\0A\00", align 1
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Update OFDMSwing[%d] = 0x%x\0A\00", align 1
@ThermalMeterVal = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_TXPowerTrackingCallback_ThermalMeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_TXPowerTrackingCallback_ThermalMeter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %92, label %19

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %22 = load i32, i32* @bMaskDWord, align 4
  %23 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %20, i32 %21, i32 %22)
  store i64 %23, i64* %4, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %50, %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @OFDM_Table_Length, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64*, i64** @OFDMSwingTable, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %42 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i64 %47)
  br label %49

49:                                               ; preds = %36, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @rCCK0_TxFilter1, align 4
  %56 = load i32, i32* @bMaskByte2, align 4
  %57 = call i64 @rtl8192_QueryBBReg(%struct.net_device* %54, i32 %55, i32 %56)
  store i64 %57, i64* %5, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %86, %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CCK_Table_length, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64**, i64*** @CCKSwingTable_Ch1_Ch13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %63, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %78 = load i32, i32* @rCCK0_TxFilter1, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %79, i64 %80, i64 %83)
  br label %89

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %58

89:                                               ; preds = %72, %58
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %279

92:                                               ; preds = %1
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = load i32, i32* @RF90_PATH_A, align 4
  %95 = call i64 @rtl8192_phy_QueryRFReg(%struct.net_device* %93, i32 %94, i32 18, i32 120)
  store i64 %95, i64* %4, align 8
  %96 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %97 = load i64, i64* %4, align 8
  %98 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load i64, i64* %4, align 8
  %100 = icmp slt i64 %99, 3
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i64, i64* %4, align 8
  %103 = icmp sgt i64 %102, 13
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %92
  br label %279

105:                                              ; preds = %101
  %106 = load i64, i64* %4, align 8
  %107 = icmp sge i64 %106, 12
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i64 12, i64* %4, align 8
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %111 = load i64, i64* %4, align 8
  %112 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  store i64 9, i64* %116, align 8
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 9, i64* %120, align 8
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %4, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %109
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %4, align 8
  %135 = sub nsw i64 %133, %134
  %136 = add nsw i64 6, %135
  store i64 %136, i64* %8, align 8
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %8, align 8
  %138 = sub nsw i64 %137, 6
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i32, i32* @OFDM_Table_Length, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp sge i64 %139, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %128
  %144 = load i32, i32* @OFDM_Table_Length, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %143, %128
  %148 = load i64, i64* %8, align 8
  %149 = load i32, i32* @CCK_Table_length, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp sge i64 %148, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @CCK_Table_length, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %8, align 8
  br label %156

156:                                              ; preds = %152, %147
  %157 = load i64, i64* %9, align 8
  %158 = load i32, i32* @CCK_Table_length, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp sge i64 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* @CCK_Table_length, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %161, %156
  br label %183

166:                                              ; preds = %109
  %167 = load i64, i64* %4, align 8
  %168 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %169 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %167, %172
  store i64 %173, i64* %10, align 8
  %174 = load i64, i64* %10, align 8
  %175 = icmp sge i64 %174, 6
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %182

177:                                              ; preds = %166
  %178 = load i64, i64* %10, align 8
  %179 = sub nsw i64 6, %178
  store i64 %179, i64* %6, align 8
  %180 = load i64, i64* %10, align 8
  %181 = sub nsw i64 6, %180
  store i64 %181, i64* %8, align 8
  br label %182

182:                                              ; preds = %177, %176
  store i64 0, i64* %9, align 8
  br label %183

183:                                              ; preds = %182, %165
  %184 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %185 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i64, i64* %9, align 8
  store i64 %190, i64* %7, align 8
  br label %193

191:                                              ; preds = %183
  %192 = load i64, i64* %8, align 8
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %191, %189
  %194 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %195 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %194, i32 0, i32 7
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 14
  br i1 %200, label %201, label %209

201:                                              ; preds = %193
  %202 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %203 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %201
  %207 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %208 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %207, i32 0, i32 5
  store i32 1, i32* %208, align 8
  store i32 1, i32* %12, align 4
  br label %226

209:                                              ; preds = %201, %193
  %210 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %211 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %210, i32 0, i32 7
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 14
  br i1 %216, label %217, label %225

217:                                              ; preds = %209
  %218 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %219 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %224 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %223, i32 0, i32 5
  store i32 0, i32* %224, align 8
  store i32 1, i32* %12, align 4
  br label %225

225:                                              ; preds = %222, %217, %209
  br label %226

226:                                              ; preds = %225, %206
  %227 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %228 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %7, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load i64, i64* %7, align 8
  %234 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %235 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %234, i32 0, i32 2
  store i64 %233, i64* %235, align 8
  store i32 1, i32* %12, align 4
  br label %236

236:                                              ; preds = %232, %226
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load %struct.net_device*, %struct.net_device** %2, align 8
  %241 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %242 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %240, i32 %243)
  br label %245

245:                                              ; preds = %239, %236
  %246 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %247 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %6, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %276

251:                                              ; preds = %245
  %252 = load i64, i64* %6, align 8
  %253 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %254 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  %255 = load %struct.net_device*, %struct.net_device** %2, align 8
  %256 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %257 = load i32, i32* @bMaskDWord, align 4
  %258 = load i64*, i64** @OFDMSwingTable, align 8
  %259 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %260 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @rtl8192_setBBreg(%struct.net_device* %255, i32 %256, i32 %257, i64 %263)
  %265 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %266 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %267 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** @OFDMSwingTable, align 8
  %270 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %271 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i64, i64* %269, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = call i32 (i32, i8*, i64, ...) @RT_TRACE(i32 %265, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %268, i64 %274)
  br label %276

276:                                              ; preds = %251, %245
  %277 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %278 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %277, i32 0, i32 6
  store i64 0, i64* %278, align 8
  br label %279

279:                                              ; preds = %276, %104, %89
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64, ...) #1

declare dso_local i64 @rtl8192_phy_QueryRFReg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dm_cck_txpower_adjust(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
