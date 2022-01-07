; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbSetPhyParameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_CARDbSetPhyParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i32*, i32, i8, i8, i64, i8, i8, i32, i64, i64 }

@BB_TYPE_11A = common dso_local global i64 0, align 8
@RF_AIROHA7230 = common dso_local global i64 0, align 8
@BB_TYPE_11G = common dso_local global i64 0, align 8
@RF_UW2452 = common dso_local global i64 0, align 8
@C_SLOT_SHORT = common dso_local global i32 0, align 4
@C_SIFS_A = common dso_local global i32 0, align 4
@BB_TYPE_11B = common dso_local global i64 0, align 8
@C_SLOT_LONG = common dso_local global i32 0, align 4
@C_SIFS_BG = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@RATE_6M = common dso_local global i32 0, align 4
@RF_RFMD2959 = common dso_local global i64 0, align 8
@MAC_REG_SIFS = common dso_local global i64 0, align 8
@MAC_REG_DIFS = common dso_local global i64 0, align 8
@C_EIFS = common dso_local global i64 0, align 8
@MAC_REG_EIFS = common dso_local global i64 0, align 8
@MAC_REG_SLOT = common dso_local global i64 0, align 8
@MAC_REG_CWMAXMIN0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbSetPhyParameter(%struct.vnt_private* %0, i64 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @BB_TYPE_11A, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %103

14:                                               ; preds = %2
  %15 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RF_AIROHA7230, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %22 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BB_TYPE_11G, align 8
  %25 = call i32 @MACvSetBBType(i64 %23, i64 %24)
  %26 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 32, i32* %29, align 4
  %30 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %31 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 16, i32* %33, align 4
  %34 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %35 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 16, i32* %37, align 4
  %38 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %39 = call i32 @BBbReadEmbedded(%struct.vnt_private* %38, i32 231, i8* %9)
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 28
  br i1 %42, label %43, label %51

43:                                               ; preds = %20
  %44 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %45 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %46 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %44, i32 231, i32 %49)
  br label %51

51:                                               ; preds = %43, %20
  br label %91

52:                                               ; preds = %14
  %53 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %54 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RF_UW2452, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %60 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BB_TYPE_11A, align 8
  %63 = call i32 @MACvSetBBType(i64 %61, i64 %62)
  %64 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 24, i32* %67, align 4
  %68 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %69 = call i32 @BBbReadEmbedded(%struct.vnt_private* %68, i32 231, i8* %9)
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 20
  br i1 %72, label %73, label %83

73:                                               ; preds = %58
  %74 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %75 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %76 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %74, i32 231, i32 %79)
  %81 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %82 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %81, i32 225, i32 87)
  br label %83

83:                                               ; preds = %73, %58
  br label %90

84:                                               ; preds = %52
  %85 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %86 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BB_TYPE_11A, align 8
  %89 = call i32 @MACvSetBBType(i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %84, %83
  br label %91

91:                                               ; preds = %90, %51
  %92 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %93 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %92, i32 136, i32 3)
  %94 = load i32, i32* @C_SLOT_SHORT, align 4
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %6, align 1
  %96 = load i32, i32* @C_SIFS_A, align 4
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %7, align 1
  %98 = load i32, i32* @C_SIFS_A, align 4
  %99 = load i32, i32* @C_SLOT_SHORT, align 4
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 %98, %100
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %8, align 1
  store i8 -92, i8* %5, align 1
  br label %301

103:                                              ; preds = %2
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* @BB_TYPE_11B, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %185

107:                                              ; preds = %103
  %108 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %109 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %108, i32 0, i32 9
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BB_TYPE_11B, align 8
  %112 = call i32 @MACvSetBBType(i64 %110, i64 %111)
  %113 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %114 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RF_AIROHA7230, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %107
  %119 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %120 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 28, i32* %122, align 4
  %123 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %124 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 0, i32* %126, align 4
  %127 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %128 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 0, i32* %130, align 4
  %131 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %132 = call i32 @BBbReadEmbedded(%struct.vnt_private* %131, i32 231, i8* %9)
  %133 = load i8, i8* %9, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 32
  br i1 %135, label %136, label %144

136:                                              ; preds = %118
  %137 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %138 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %139 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %137, i32 231, i32 %142)
  br label %144

144:                                              ; preds = %136, %118
  br label %173

145:                                              ; preds = %107
  %146 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %147 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @RF_UW2452, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %145
  %152 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %153 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 20, i32* %155, align 4
  %156 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %157 = call i32 @BBbReadEmbedded(%struct.vnt_private* %156, i32 231, i8* %9)
  %158 = load i8, i8* %9, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 24
  br i1 %160, label %161, label %171

161:                                              ; preds = %151
  %162 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %163 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %164 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %162, i32 231, i32 %167)
  %169 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %170 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %169, i32 225, i32 211)
  br label %171

171:                                              ; preds = %161, %151
  br label %172

172:                                              ; preds = %171, %145
  br label %173

173:                                              ; preds = %172, %144
  %174 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %175 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %174, i32 136, i32 2)
  %176 = load i32, i32* @C_SLOT_LONG, align 4
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %6, align 1
  %178 = load i32, i32* @C_SIFS_BG, align 4
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %7, align 1
  %180 = load i32, i32* @C_SIFS_BG, align 4
  %181 = load i32, i32* @C_SLOT_LONG, align 4
  %182 = mul nsw i32 2, %181
  %183 = add nsw i32 %180, %182
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %8, align 1
  store i8 -91, i8* %5, align 1
  br label %300

185:                                              ; preds = %103
  %186 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %187 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %186, i32 0, i32 9
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @BB_TYPE_11G, align 8
  %190 = call i32 @MACvSetBBType(i64 %188, i64 %189)
  %191 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %192 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @RF_AIROHA7230, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %185
  %197 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %198 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 28, i32* %200, align 4
  %201 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %202 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  store i32 0, i32* %204, align 4
  %205 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %206 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  store i32 0, i32* %208, align 4
  %209 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %210 = call i32 @BBbReadEmbedded(%struct.vnt_private* %209, i32 231, i8* %9)
  %211 = load i8, i8* %9, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 32
  br i1 %213, label %214, label %222

214:                                              ; preds = %196
  %215 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %216 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %217 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %215, i32 231, i32 %220)
  br label %222

222:                                              ; preds = %214, %196
  br label %251

223:                                              ; preds = %185
  %224 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %225 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @RF_UW2452, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %250

229:                                              ; preds = %223
  %230 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %231 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 20, i32* %233, align 4
  %234 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %235 = call i32 @BBbReadEmbedded(%struct.vnt_private* %234, i32 231, i8* %9)
  %236 = load i8, i8* %9, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 24
  br i1 %238, label %239, label %249

239:                                              ; preds = %229
  %240 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %241 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %242 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %240, i32 231, i32 %245)
  %247 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %248 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %247, i32 225, i32 211)
  br label %249

249:                                              ; preds = %239, %229
  br label %250

250:                                              ; preds = %249, %223
  br label %251

251:                                              ; preds = %250, %222
  %252 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %253 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %252, i32 136, i32 8)
  %254 = load i32, i32* @C_SIFS_BG, align 4
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %7, align 1
  %256 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %257 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %256, i32 0, i32 10
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %251
  %261 = load i32, i32* @C_SLOT_SHORT, align 4
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %6, align 1
  %263 = load i32, i32* @C_SIFS_BG, align 4
  %264 = load i32, i32* @C_SLOT_SHORT, align 4
  %265 = mul nsw i32 2, %264
  %266 = add nsw i32 %263, %265
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %8, align 1
  br label %276

268:                                              ; preds = %251
  %269 = load i32, i32* @C_SLOT_LONG, align 4
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %6, align 1
  %271 = load i32, i32* @C_SIFS_BG, align 4
  %272 = load i32, i32* @C_SLOT_LONG, align 4
  %273 = mul nsw i32 2, %272
  %274 = add nsw i32 %271, %273
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %8, align 1
  br label %276

276:                                              ; preds = %268, %260
  store i8 -92, i8* %5, align 1
  %277 = load i32, i32* @RATE_54M, align 4
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %296, %276
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* @RATE_6M, align 4
  %281 = icmp sge i32 %279, %280
  br i1 %281, label %282, label %299

282:                                              ; preds = %278
  %283 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %284 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = shl i32 1, %286
  %288 = and i32 %285, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %282
  %291 = load i8, i8* %5, align 1
  %292 = zext i8 %291 to i32
  %293 = or i32 %292, 1
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %5, align 1
  br label %299

295:                                              ; preds = %282
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %10, align 4
  br label %278

299:                                              ; preds = %290, %278
  br label %300

300:                                              ; preds = %299, %173
  br label %301

301:                                              ; preds = %300, %91
  %302 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %303 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @RF_RFMD2959, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %316

307:                                              ; preds = %301
  %308 = load i8, i8* %7, align 1
  %309 = zext i8 %308 to i32
  %310 = sub nsw i32 %309, 3
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %7, align 1
  %312 = load i8, i8* %8, align 1
  %313 = zext i8 %312 to i32
  %314 = sub nsw i32 %313, 3
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %8, align 1
  br label %316

316:                                              ; preds = %307, %301
  %317 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %318 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %317, i32 0, i32 3
  %319 = load i8, i8* %318, align 4
  %320 = zext i8 %319 to i32
  %321 = load i8, i8* %7, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp ne i32 %320, %322
  br i1 %323, label %324, label %337

324:                                              ; preds = %316
  %325 = load i8, i8* %7, align 1
  %326 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %327 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %326, i32 0, i32 3
  store i8 %325, i8* %327, align 4
  %328 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %329 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %328, i32 0, i32 9
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @MAC_REG_SIFS, align 8
  %332 = add nsw i64 %330, %331
  %333 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %334 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %333, i32 0, i32 3
  %335 = load i8, i8* %334, align 4
  %336 = call i32 @VNSvOutPortB(i64 %332, i8 zeroext %335)
  br label %337

337:                                              ; preds = %324, %316
  %338 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %339 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %338, i32 0, i32 4
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = load i8, i8* %8, align 1
  %343 = zext i8 %342 to i32
  %344 = icmp ne i32 %341, %343
  br i1 %344, label %345, label %358

345:                                              ; preds = %337
  %346 = load i8, i8* %8, align 1
  %347 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %348 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %347, i32 0, i32 4
  store i8 %346, i8* %348, align 1
  %349 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %350 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %349, i32 0, i32 9
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @MAC_REG_DIFS, align 8
  %353 = add nsw i64 %351, %352
  %354 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %355 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %354, i32 0, i32 4
  %356 = load i8, i8* %355, align 1
  %357 = call i32 @VNSvOutPortB(i64 %353, i8 zeroext %356)
  br label %358

358:                                              ; preds = %345, %337
  %359 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %360 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %359, i32 0, i32 5
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @C_EIFS, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %378

364:                                              ; preds = %358
  %365 = load i64, i64* @C_EIFS, align 8
  %366 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %367 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %366, i32 0, i32 5
  store i64 %365, i64* %367, align 8
  %368 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %369 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %368, i32 0, i32 9
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @MAC_REG_EIFS, align 8
  %372 = add nsw i64 %370, %371
  %373 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %374 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %373, i32 0, i32 5
  %375 = load i64, i64* %374, align 8
  %376 = trunc i64 %375 to i8
  %377 = call i32 @VNSvOutPortB(i64 %372, i8 zeroext %376)
  br label %378

378:                                              ; preds = %364, %358
  %379 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %380 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %379, i32 0, i32 6
  %381 = load i8, i8* %380, align 8
  %382 = zext i8 %381 to i32
  %383 = load i8, i8* %6, align 1
  %384 = zext i8 %383 to i32
  %385 = icmp ne i32 %382, %384
  br i1 %385, label %386, label %401

386:                                              ; preds = %378
  %387 = load i8, i8* %6, align 1
  %388 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %389 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %388, i32 0, i32 6
  store i8 %387, i8* %389, align 8
  %390 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %391 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %390, i32 0, i32 9
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @MAC_REG_SLOT, align 8
  %394 = add nsw i64 %392, %393
  %395 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %396 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %395, i32 0, i32 6
  %397 = load i8, i8* %396, align 8
  %398 = call i32 @VNSvOutPortB(i64 %394, i8 zeroext %397)
  %399 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %400 = call i32 @BBvSetShortSlotTime(%struct.vnt_private* %399)
  br label %401

401:                                              ; preds = %386, %378
  %402 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %403 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %402, i32 0, i32 7
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = load i8, i8* %5, align 1
  %407 = zext i8 %406 to i32
  %408 = icmp ne i32 %405, %407
  br i1 %408, label %409, label %422

409:                                              ; preds = %401
  %410 = load i8, i8* %5, align 1
  %411 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %412 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %411, i32 0, i32 7
  store i8 %410, i8* %412, align 1
  %413 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %414 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %413, i32 0, i32 9
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @MAC_REG_CWMAXMIN0, align 8
  %417 = add nsw i64 %415, %416
  %418 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %419 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %418, i32 0, i32 7
  %420 = load i8, i8* %419, align 1
  %421 = call i32 @VNSvOutPortB(i64 %417, i8 zeroext %420)
  br label %422

422:                                              ; preds = %409, %401
  %423 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %424 = call i32 @CARDbyGetPktType(%struct.vnt_private* %423)
  %425 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %426 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %425, i32 0, i32 8
  store i32 %424, i32* %426, align 4
  %427 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %428 = load i64, i64* %4, align 8
  %429 = call i32 @CARDvSetRSPINF(%struct.vnt_private* %427, i64 %428)
  ret i32 1
}

declare dso_local i32 @MACvSetBBType(i64, i64) #1

declare dso_local i32 @BBbReadEmbedded(%struct.vnt_private*, i32, i8*) #1

declare dso_local i32 @BBbWriteEmbedded(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i8 zeroext) #1

declare dso_local i32 @BBvSetShortSlotTime(%struct.vnt_private*) #1

declare dso_local i32 @CARDbyGetPktType(%struct.vnt_private*) #1

declare dso_local i32 @CARDvSetRSPINF(%struct.vnt_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
