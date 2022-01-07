; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_HWConfig.c_odm_RxPhyStatus92CSeries_Parsing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_HWConfig.c_odm_RxPhyStatus92CSeries_Parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64*, i32, i32 }
%struct.odm_phy_info = type { i32*, i32, i32, i32, i32*, i32, i32, i8*, i8*, i64*, i8** }
%struct.odm_packet_info = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@DESC_RATE11M = common dso_local global i64 0, align 8
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@ODM_RF_PATH_MAX = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.odm_phy_info*, i32*, %struct.odm_packet_info*)* @odm_RxPhyStatus92CSeries_Parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_RxPhyStatus92CSeries_Parsing(%struct.TYPE_11__* %0, %struct.odm_phy_info* %1, i32* %2, %struct.odm_packet_info* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.odm_phy_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.odm_packet_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.odm_phy_info* %1, %struct.odm_phy_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.odm_packet_info* %3, %struct.odm_packet_info** %8, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %22, align 8
  %28 = load %struct.odm_packet_info*, %struct.odm_packet_info** %8, align 8
  %29 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DESC_RATE11M, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %35 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @ODM_RF_PATH_A, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 -1, i32* %38, align 4
  %39 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %40 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @ODM_RF_PATH_B, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 -1, i32* %43, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %121

46:                                               ; preds = %4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = and i32 %55, 224
  %57 = ashr i32 %56, 5
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %23, align 4
  %59 = and i32 %58, 31
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i8* @odm_CCKRSSI_8723B(i32 %60, i32 %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @odm_QueryRxPwrPercentage(i8* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp sgt i32 %65, 100
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  store i32 100, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %71 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %74 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %77 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %79 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 40
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 100, i32* %24, align 4
  br label %106

88:                                               ; preds = %82, %68
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %25, align 4
  %93 = icmp sgt i32 %92, 64
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 0, i32* %24, align 4
  br label %105

95:                                               ; preds = %88
  %96 = load i32, i32* %25, align 4
  %97 = icmp slt i32 %96, 20
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 100, i32* %24, align 4
  br label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %25, align 4
  %101 = sub nsw i32 64, %100
  %102 = mul nsw i32 %101, 100
  %103 = sdiv i32 %102, 44
  store i32 %103, i32* %24, align 4
  br label %104

104:                                              ; preds = %99, %98
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %87
  %107 = load i32, i32* %24, align 4
  %108 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %109 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %24, align 4
  %111 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %112 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @ODM_RF_PATH_A, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %117 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @ODM_RF_PATH_B, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 -1, i32* %120, align 4
  br label %289

121:                                              ; preds = %4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load i64, i64* @ODM_RF_PATH_A, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %208, %121
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @ODM_RF_PATH_MAX, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %211

133:                                              ; preds = %129
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @BIT(i32 %137)
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %141, %133
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 63
  %154 = mul nsw i32 %153, 2
  %155 = sub nsw i32 %154, 110
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %159
  store i8* %157, i8** %160, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %166 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %165, i32 0, i32 10
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* %164, i8** %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @odm_QueryRxPwrPercentage(i8* %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %181 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sdiv i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 %194, i64* %201, align 8
  %202 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %203 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %202, i32 0, i32 9
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  store i64 %194, i64* %207, align 8
  br label %208

208:                                              ; preds = %144
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %129

211:                                              ; preds = %129
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 1
  %216 = and i32 %215, 127
  %217 = sub nsw i32 %216, 110
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  store i8* %219, i8** %12, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 @odm_QueryRxPwrPercentage(i8* %220)
  store i32 %221, i32* %14, align 4
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %224 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %227 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load i8*, i8** %12, align 8
  %229 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %230 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %229, i32 0, i32 8
  store i8* %228, i8** %230, align 8
  %231 = load i8*, i8** %12, align 8
  %232 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %233 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  %234 = load %struct.odm_packet_info*, %struct.odm_packet_info** %8, align 8
  %235 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @DESC_RATEMCS8, align 8
  %238 = icmp sge i64 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %211
  %240 = load %struct.odm_packet_info*, %struct.odm_packet_info** %8, align 8
  %241 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @DESC_RATEMCS15, align 8
  %244 = icmp sle i64 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  store i32 2, i32* %10, align 4
  br label %247

246:                                              ; preds = %239, %211
  store i32 1, i32* %10, align 4
  br label %247

247:                                              ; preds = %246, %245
  store i32 0, i32* %9, align 4
  br label %248

248:                                              ; preds = %279, %247
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %282

252:                                              ; preds = %248
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @odm_EVMdbToPercentage(i32 %259)
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = load i64, i64* @ODM_RF_PATH_A, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %252
  %266 = load i32, i32* %13, align 4
  %267 = and i32 %266, 255
  %268 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %269 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %265, %252
  %271 = load i32, i32* %13, align 4
  %272 = and i32 %271, 255
  %273 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %274 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %272, i32* %278, align 4
  br label %279

279:                                              ; preds = %270
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %248

282:                                              ; preds = %248
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %284 = load %struct.odm_packet_info*, %struct.odm_packet_info** %8, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @ODM_ParsingCFO(%struct.TYPE_11__* %283, %struct.odm_packet_info* %284, i32 %287)
  br label %289

289:                                              ; preds = %282, %106
  %290 = load i32, i32* %18, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %294 = load i32, i32* %14, align 4
  %295 = call i64 @odm_SignalScaleMapping(%struct.TYPE_11__* %293, i32 %294)
  %296 = trunc i64 %295 to i32
  %297 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %298 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %297, i32 0, i32 6
  store i32 %296, i32* %298, align 4
  br label %312

299:                                              ; preds = %289
  %300 = load i32, i32* %19, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %299
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* %17, align 4
  %306 = sdiv i32 %305, %304
  store i32 %306, i32* %17, align 4
  %307 = call i64 @odm_SignalScaleMapping(%struct.TYPE_11__* %303, i32 %306)
  %308 = trunc i64 %307 to i32
  %309 = load %struct.odm_phy_info*, %struct.odm_phy_info** %6, align 8
  %310 = getelementptr inbounds %struct.odm_phy_info, %struct.odm_phy_info* %309, i32 0, i32 6
  store i32 %308, i32* %310, align 4
  br label %311

311:                                              ; preds = %302, %299
  br label %312

312:                                              ; preds = %311, %292
  ret void
}

declare dso_local i8* @odm_CCKRSSI_8723B(i32, i32) #1

declare dso_local i32 @odm_QueryRxPwrPercentage(i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @odm_EVMdbToPercentage(i32) #1

declare dso_local i32 @ODM_ParsingCFO(%struct.TYPE_11__*, %struct.odm_packet_info*, i32) #1

declare dso_local i64 @odm_SignalScaleMapping(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
