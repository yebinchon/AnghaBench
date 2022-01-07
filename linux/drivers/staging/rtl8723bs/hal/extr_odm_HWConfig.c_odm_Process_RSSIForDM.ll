; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_HWConfig.c_odm_Process_RSSIForDM.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_HWConfig.c_odm_Process_RSSIForDM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_9__** }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.odm_phy_info = type { i64*, i32 }
%struct.odm_packet_info = type { i32, i64, i64, i64, i32 }

@DESC_RATE11M = common dso_local global i64 0, align 8
@ODM_BB_ANT_DIV = common dso_local global i32 0, align 4
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@Rx_Smooth_Factor = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.odm_phy_info*, %struct.odm_packet_info*)* @odm_Process_RSSIForDM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_Process_RSSIForDM(%struct.TYPE_10__* %0, %struct.odm_phy_info* %1, %struct.odm_packet_info* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.odm_phy_info*, align 8
  %6 = alloca %struct.odm_packet_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.odm_phy_info* %1, %struct.odm_phy_info** %5, align 8
  store %struct.odm_packet_info* %2, %struct.odm_packet_info** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %19 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %421

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %28 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %17, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %34 = call i32 @IS_STA_VALID(%struct.TYPE_9__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %421

37:                                               ; preds = %23
  %38 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %39 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %421

43:                                               ; preds = %37
  %44 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %45 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %56 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DESC_RATE11M, align 8
  %59 = icmp sle i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %11, align 4
  %62 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %63 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ODM_BB_ANT_DIV, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  %87 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %88 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %74
  %92 = load %struct.odm_packet_info*, %struct.odm_packet_info** %6, align 8
  %93 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %421

96:                                               ; preds = %91, %74
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %262, label %99

99:                                               ; preds = %96
  %100 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %101 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @ODM_RF_PATH_B, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %99
  %108 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %109 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @ODM_RF_PATH_A, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %10, align 4
  %115 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %116 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @ODM_RF_PATH_A, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  store i32 0, i32* %125, align 8
  br label %217

126:                                              ; preds = %99
  %127 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %128 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @ODM_RF_PATH_A, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %137 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @ODM_RF_PATH_B, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %146 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @ODM_RF_PATH_A, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %152 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @ODM_RF_PATH_B, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %150, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %126
  %159 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %160 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @ODM_RF_PATH_A, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %12, align 4
  %166 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %167 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* @ODM_RF_PATH_B, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %13, align 4
  br label %188

173:                                              ; preds = %126
  %174 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %175 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* @ODM_RF_PATH_B, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %12, align 4
  %181 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %182 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* @ODM_RF_PATH_A, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %173, %158
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %189, %190
  %192 = icmp slt i32 %191, 3
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %10, align 4
  br label %216

195:                                              ; preds = %188
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %13, align 4
  %198 = sub nsw i32 %196, %197
  %199 = icmp slt i32 %198, 6
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* %12, align 4
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %215

203:                                              ; preds = %195
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp slt i32 %206, 10
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* %12, align 4
  %210 = sub nsw i32 %209, 2
  store i32 %210, i32* %10, align 4
  br label %214

211:                                              ; preds = %203
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %212, 3
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214, %200
  br label %216

216:                                              ; preds = %215, %193
  br label %217

217:                                              ; preds = %216, %107
  %218 = load i32, i32* %9, align 4
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %222 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %9, align 4
  br label %251

224:                                              ; preds = %217
  %225 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %226 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %224
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @Rx_Smooth_Factor, align 4
  %233 = sub nsw i32 %232, 1
  %234 = mul nsw i32 %231, %233
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* @Rx_Smooth_Factor, align 4
  %238 = sdiv i32 %236, %237
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %250

241:                                              ; preds = %224
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @Rx_Smooth_Factor, align 4
  %244 = sub nsw i32 %243, 1
  %245 = mul nsw i32 %242, %244
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* @Rx_Smooth_Factor, align 4
  %249 = sdiv i32 %247, %248
  store i32 %249, i32* %9, align 4
  br label %250

250:                                              ; preds = %241, %230
  br label %251

251:                                              ; preds = %250, %220
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 1
  %257 = load i32, i32* @BIT0, align 4
  %258 = or i32 %256, %257
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  store i32 %258, i32* %261, align 4
  br label %319

262:                                              ; preds = %96
  %263 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %264 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %10, align 4
  %266 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %267 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 3
  store i32 0, i32* %272, align 8
  %273 = load i32, i32* %8, align 4
  %274 = icmp sle i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %262
  %276 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %277 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %8, align 4
  br label %310

279:                                              ; preds = %262
  %280 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %281 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = icmp sgt i32 %282, %283
  br i1 %284, label %285, label %298

285:                                              ; preds = %279
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* @Rx_Smooth_Factor, align 4
  %288 = sub nsw i32 %287, 1
  %289 = mul nsw i32 %286, %288
  %290 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %291 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %289, %292
  %294 = load i32, i32* @Rx_Smooth_Factor, align 4
  %295 = sdiv i32 %293, %294
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %309

298:                                              ; preds = %279
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @Rx_Smooth_Factor, align 4
  %301 = sub nsw i32 %300, 1
  %302 = mul nsw i32 %299, %301
  %303 = load %struct.odm_phy_info*, %struct.odm_phy_info** %5, align 8
  %304 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %302, %305
  %307 = load i32, i32* @Rx_Smooth_Factor, align 4
  %308 = sdiv i32 %306, %307
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %298, %285
  br label %310

310:                                              ; preds = %309, %275
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = shl i32 %314, 1
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 3
  store i32 %315, i32* %318, align 4
  br label %319

319:                                              ; preds = %310, %251
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = icmp sge i32 %323, 64
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 4
  store i32 64, i32* %328, align 4
  br label %335

329:                                              ; preds = %319
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %329, %325
  store i32 0, i32* %14, align 4
  br label %336

336:                                              ; preds = %354, %335
  %337 = load i32, i32* %14, align 4
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = icmp slt i32 %337, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %336
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %14, align 4
  %349 = ashr i32 %347, %348
  %350 = load i32, i32* @BIT0, align 4
  %351 = and i32 %349, %350
  %352 = load i32, i32* %15, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %15, align 4
  br label %354

354:                                              ; preds = %343
  %355 = load i32, i32* %14, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %14, align 4
  br label %336

357:                                              ; preds = %336
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 64
  br i1 %362, label %363, label %382

363:                                              ; preds = %357
  %364 = load i32, i32* %15, align 4
  %365 = shl i32 %364, 4
  %366 = icmp sgt i32 %365, 64
  br i1 %366, label %367, label %368

367:                                              ; preds = %363
  br label %371

368:                                              ; preds = %363
  %369 = load i32, i32* %15, align 4
  %370 = shl i32 %369, 4
  br label %371

371:                                              ; preds = %368, %367
  %372 = phi i32 [ 64, %367 ], [ %370, %368 ]
  store i32 %372, i32* %16, align 4
  %373 = load i32, i32* %16, align 4
  %374 = load i32, i32* %9, align 4
  %375 = mul nsw i32 %373, %374
  %376 = load i32, i32* %16, align 4
  %377 = sub nsw i32 64, %376
  %378 = load i32, i32* %8, align 4
  %379 = mul nsw i32 %377, %378
  %380 = add nsw i32 %375, %379
  %381 = ashr i32 %380, 6
  store i32 %381, i32* %7, align 4
  br label %408

382:                                              ; preds = %357
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %406

388:                                              ; preds = %382
  %389 = load i32, i32* %15, align 4
  %390 = load i32, i32* %9, align 4
  %391 = mul nsw i32 %389, %390
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %15, align 4
  %397 = sub nsw i32 %395, %396
  %398 = load i32, i32* %8, align 4
  %399 = mul nsw i32 %397, %398
  %400 = add nsw i32 %391, %399
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 4
  %405 = sdiv i32 %400, %404
  store i32 %405, i32* %7, align 4
  br label %407

406:                                              ; preds = %382
  store i32 0, i32* %7, align 4
  br label %407

407:                                              ; preds = %406, %388
  br label %408

408:                                              ; preds = %407, %371
  %409 = load i32, i32* %8, align 4
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  store i32 %409, i32* %412, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 1
  store i32 %413, i32* %416, align 4
  %417 = load i32, i32* %7, align 4
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 2
  store i32 %417, i32* %420, align 4
  br label %421

421:                                              ; preds = %22, %36, %42, %408, %91
  ret void
}

declare dso_local i32 @IS_STA_VALID(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
