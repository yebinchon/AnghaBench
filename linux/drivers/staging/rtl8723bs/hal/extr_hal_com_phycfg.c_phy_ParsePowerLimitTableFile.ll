; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_ParsePowerLimitTableFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_ParsePowerLimitTableFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@TXPWR_LMT_MAX_REGULATION_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"===>phy_ParsePowerLimitTableFile()\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Fail to parse band!\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Fail to parse bandwidth!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Fail to parse rf path!\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Fail to parse rate!\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Lost \22##   START\22 label\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Fail to parse column number!\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"invalid col number %d (greater than max %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"invalid number of regulation!\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Wrong format\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"<===== phy_ParsePowerLimitTableFile()\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Meet wrong channel => power limt pair\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Wrong fraction in TXPWR_LMT.txt\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"Abnormal loading stage in phy_ParsePowerLimitTableFile()!\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"<===phy_ParsePowerLimitTableFile()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*)* @phy_ParsePowerLimitTableFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_ParsePowerLimitTableFile(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  %15 = alloca [10 x i8], align 1
  %16 = alloca [10 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [10 x i8], align 1
  %20 = alloca [10 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [10 x i8], align 1
  %25 = alloca [10 x i8], align 1
  %26 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* @_SUCCESS, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @TXPWR_LMT_MAX_REGULATION_NUM, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca [10 x i8], i64 %29, align 16
  store i64 %29, i64* %18, align 8
  store i32 0, i32* %21, align 4
  %32 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @phy_DecryptBBPgParaFile(%struct.adapter* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %2
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @GetLineFromBuffer(i8* %44)
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %692, %42
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %695

49:                                               ; preds = %46
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 @IsCommentString(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %692

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %154

57:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TXPWR_LMT_MAX_REGULATION_NUM, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %31, i64 %64
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %65, i64 0, i64 0
  %67 = call i32 @memset(i8* %66, i32 0, i32 10)
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %58

71:                                               ; preds = %58
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %73 = call i32 @memset(i8* %72, i32 0, i32 10)
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %75 = call i32 @memset(i8* %74, i32 0, i32 10)
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %77 = call i32 @memset(i8* %76, i32 0, i32 10)
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %79 = call i32 @memset(i8* %78, i32 0, i32 10)
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %81 = call i32 @memset(i8* %80, i32 0, i32 10)
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 35
  br i1 %86, label %93, label %87

87:                                               ; preds = %71
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 35
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %71
  br label %692

94:                                               ; preds = %87
  store i32 2, i32* %6, align 4
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 32
  br i1 %102, label %111, label %103

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 9
  br label %111

111:                                              ; preds = %103, %95
  %112 = phi i1 [ true, %95 ], [ %110, %103 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %95

116:                                              ; preds = %111
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 32, i8* %121, align 1
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %124 = call i32 @ParseQualifiedString(i8* %122, i32* %6, i8* %123, i8 signext 32, i8 signext 44)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %116
  %127 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @_FAIL, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

129:                                              ; preds = %116
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %132 = call i32 @ParseQualifiedString(i8* %130, i32* %6, i8* %131, i8 signext 32, i8 signext 44)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @_FAIL, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

137:                                              ; preds = %129
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %140 = call i32 @ParseQualifiedString(i8* %138, i32* %6, i8* %139, i8 signext 32, i8 signext 44)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* @_FAIL, align 4
  store i32 %144, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

145:                                              ; preds = %137
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %148 = call i32 @ParseQualifiedString(i8* %146, i32* %6, i8* %147, i8 signext 32, i8 signext 44)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32, i32* @_FAIL, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

153:                                              ; preds = %145
  store i32 1, i32* %8, align 4
  br label %691

154:                                              ; preds = %54
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %204

157:                                              ; preds = %154
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 35
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 35
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %157
  br label %692

170:                                              ; preds = %163
  store i32 2, i32* %6, align 4
  br label %171

171:                                              ; preds = %189, %170
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load i8*, i8** %11, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 9
  br label %187

187:                                              ; preds = %179, %171
  %188 = phi i1 [ true, %171 ], [ %186, %179 ]
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %171

192:                                              ; preds = %187
  %193 = load i8*, i8** %11, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = bitcast i8* %196 to i32*
  %198 = call i64 @eqNByte(i32* %197, i32* bitcast ([6 x i8]* @.str.5 to i32*), i32 5)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %192
  %201 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %202 = load i32, i32* @_FAIL, align 4
  store i32 %202, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

203:                                              ; preds = %192
  store i32 2, i32* %8, align 4
  br label %690

204:                                              ; preds = %154
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %344

207:                                              ; preds = %204
  %208 = load i8*, i8** %11, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 35
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = load i8*, i8** %11, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 35
  br i1 %218, label %219, label %220

219:                                              ; preds = %213, %207
  br label %692

220:                                              ; preds = %213
  store i32 2, i32* %6, align 4
  br label %221

221:                                              ; preds = %239, %220
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 32
  br i1 %228, label %237, label %229

229:                                              ; preds = %221
  %230 = load i8*, i8** %11, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 9
  br label %237

237:                                              ; preds = %229, %221
  %238 = phi i1 [ true, %221 ], [ %236, %229 ]
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %221

242:                                              ; preds = %237
  %243 = load i8*, i8** %11, align 8
  %244 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %245 = call i32 @ParseQualifiedString(i8* %243, i32* %6, i8* %244, i8 signext 35, i8 signext 35)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %249 = load i32, i32* @_FAIL, align 4
  store i32 %249, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

250:                                              ; preds = %242
  %251 = getelementptr inbounds [10 x i8], [10 x i8]* %20, i64 0, i64 0
  %252 = call i32 @GetU1ByteIntegerFromStringInDecimal(i8* %251, i32* %21)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* @_FAIL, align 4
  store i32 %255, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

256:                                              ; preds = %250
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* @TXPWR_LMT_MAX_REGULATION_NUM, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* @TXPWR_LMT_MAX_REGULATION_NUM, align 4
  %263 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load i32, i32* @_FAIL, align 4
  store i32 %264, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

265:                                              ; preds = %256
  store i32 0, i32* %7, align 4
  br label %266

266:                                              ; preds = %340, %265
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %21, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %343

270:                                              ; preds = %266
  store i32 0, i32* %23, align 4
  br label %271

271:                                              ; preds = %289, %270
  %272 = load i8*, i8** %11, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 32
  br i1 %278, label %287, label %279

279:                                              ; preds = %271
  %280 = load i8*, i8** %11, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 9
  br label %287

287:                                              ; preds = %279, %271
  %288 = phi i1 [ true, %271 ], [ %286, %279 ]
  br i1 %288, label %289, label %292

289:                                              ; preds = %287
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %6, align 4
  br label %271

292:                                              ; preds = %287
  br label %293

293:                                              ; preds = %319, %292
  %294 = load i8*, i8** %11, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 32
  br i1 %300, label %301, label %317

301:                                              ; preds = %293
  %302 = load i8*, i8** %11, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 9
  br i1 %308, label %309, label %317

309:                                              ; preds = %301
  %310 = load i8*, i8** %11, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %315, 0
  br label %317

317:                                              ; preds = %309, %301, %293
  %318 = phi i1 [ false, %301 ], [ false, %293 ], [ %316, %309 ]
  br i1 %318, label %319, label %333

319:                                              ; preds = %317
  %320 = load i8*, i8** %11, align 8
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %6, align 4
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i8, i8* %320, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [10 x i8], [10 x i8]* %31, i64 %327
  %329 = load i32, i32* %23, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %23, align 4
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds [10 x i8], [10 x i8]* %328, i64 0, i64 %331
  store i8 %325, i8* %332, align 1
  br label %293

333:                                              ; preds = %317
  %334 = load i32, i32* %23, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %338 = load i32, i32* @_FAIL, align 4
  store i32 %338, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

339:                                              ; preds = %333
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %7, align 4
  br label %266

343:                                              ; preds = %266
  store i32 3, i32* %8, align 4
  br label %689

344:                                              ; preds = %204
  %345 = load i32, i32* %8, align 4
  %346 = icmp eq i32 %345, 3
  br i1 %346, label %347, label %685

347:                                              ; preds = %344
  %348 = bitcast [10 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %348, i8 0, i64 10, i1 false)
  %349 = bitcast [10 x i8]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %349, i8 0, i64 10, i1 false)
  store i32 0, i32* %26, align 4
  %350 = load i8*, i8** %11, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 0
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 35
  br i1 %354, label %355, label %396

355:                                              ; preds = %347
  %356 = load i8*, i8** %11, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 35
  br i1 %360, label %361, label %396

361:                                              ; preds = %355
  store i32 2, i32* %6, align 4
  br label %362

362:                                              ; preds = %380, %361
  %363 = load i8*, i8** %11, align 8
  %364 = load i32, i32* %6, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %363, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 32
  br i1 %369, label %378, label %370

370:                                              ; preds = %362
  %371 = load i8*, i8** %11, align 8
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 9
  br label %378

378:                                              ; preds = %370, %362
  %379 = phi i1 [ true, %362 ], [ %377, %370 ]
  br i1 %379, label %380, label %383

380:                                              ; preds = %378
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %362

383:                                              ; preds = %378
  %384 = load i8*, i8** %11, align 8
  %385 = load i32, i32* %6, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %384, i64 %386
  %388 = bitcast i8* %387 to i32*
  %389 = call i64 @eqNByte(i32* %388, i32* bitcast ([4 x i8]* @.str.10 to i32*), i32 3)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %383
  store i32 0, i32* %8, align 4
  br label %692

392:                                              ; preds = %383
  %393 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %394 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %395 = load i32, i32* @_FAIL, align 4
  store i32 %395, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

396:                                              ; preds = %355, %347
  %397 = load i8*, i8** %11, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 0
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp ne i32 %400, 99
  br i1 %401, label %402, label %408

402:                                              ; preds = %396
  %403 = load i8*, i8** %11, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 0
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  %407 = icmp ne i32 %406, 67
  br i1 %407, label %420, label %408

408:                                              ; preds = %402, %396
  %409 = load i8*, i8** %11, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp ne i32 %412, 104
  br i1 %413, label %414, label %422

414:                                              ; preds = %408
  %415 = load i8*, i8** %11, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 1
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp ne i32 %418, 72
  br i1 %419, label %420, label %422

420:                                              ; preds = %414, %402
  %421 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %692

422:                                              ; preds = %414, %408
  store i32 2, i32* %6, align 4
  store i32 0, i32* %26, align 4
  br label %423

423:                                              ; preds = %441, %422
  %424 = load i8*, i8** %11, align 8
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %424, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = icmp sge i32 %429, 48
  br i1 %430, label %431, label %439

431:                                              ; preds = %423
  %432 = load i8*, i8** %11, align 8
  %433 = load i32, i32* %6, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, i8* %432, i64 %434
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp sle i32 %437, 57
  br label %439

439:                                              ; preds = %431, %423
  %440 = phi i1 [ false, %423 ], [ %438, %431 ]
  br i1 %440, label %441, label %454

441:                                              ; preds = %439
  %442 = load i8*, i8** %11, align 8
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, i8* %442, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = load i32, i32* %26, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 %448
  store i8 %446, i8* %449, align 1
  %450 = load i32, i32* %26, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %26, align 4
  %452 = load i32, i32* %6, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %6, align 4
  br label %423

454:                                              ; preds = %439
  store i32 0, i32* %7, align 4
  br label %455

455:                                              ; preds = %681, %454
  %456 = load i32, i32* %7, align 4
  %457 = load i32, i32* %21, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %684

459:                                              ; preds = %455
  br label %460

460:                                              ; preds = %478, %459
  %461 = load i8*, i8** %11, align 8
  %462 = load i32, i32* %6, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* %461, i64 %463
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 32
  br i1 %467, label %476, label %468

468:                                              ; preds = %460
  %469 = load i8*, i8** %11, align 8
  %470 = load i32, i32* %6, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %469, i64 %471
  %473 = load i8, i8* %472, align 1
  %474 = sext i8 %473 to i32
  %475 = icmp eq i32 %474, 9
  br label %476

476:                                              ; preds = %468, %460
  %477 = phi i1 [ true, %460 ], [ %475, %468 ]
  br i1 %477, label %478, label %481

478:                                              ; preds = %476
  %479 = load i32, i32* %6, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %6, align 4
  br label %460

481:                                              ; preds = %476
  store i32 0, i32* %26, align 4
  store i32 0, i32* %10, align 4
  %482 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 0
  %483 = call i32 @memset(i8* %482, i32 0, i32 10)
  br label %484

484:                                              ; preds = %550, %481
  %485 = load i8*, i8** %11, align 8
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %485, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp sge i32 %490, 48
  br i1 %491, label %492, label %500

492:                                              ; preds = %484
  %493 = load i8*, i8** %11, align 8
  %494 = load i32, i32* %6, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, i8* %493, i64 %495
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  %499 = icmp sle i32 %498, 57
  br i1 %499, label %508, label %500

500:                                              ; preds = %492, %484
  %501 = load i8*, i8** %11, align 8
  %502 = load i32, i32* %6, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i8, i8* %501, i64 %503
  %505 = load i8, i8* %504, align 1
  %506 = sext i8 %505 to i32
  %507 = icmp eq i32 %506, 46
  br label %508

508:                                              ; preds = %500, %492
  %509 = phi i1 [ true, %492 ], [ %507, %500 ]
  br i1 %509, label %510, label %563

510:                                              ; preds = %508
  %511 = load i8*, i8** %11, align 8
  %512 = load i32, i32* %6, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i8, i8* %511, i64 %513
  %515 = load i8, i8* %514, align 1
  %516 = sext i8 %515 to i32
  %517 = icmp eq i32 %516, 46
  br i1 %517, label %518, label %550

518:                                              ; preds = %510
  %519 = load i8*, i8** %11, align 8
  %520 = load i32, i32* %6, align 4
  %521 = add nsw i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %519, i64 %522
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i32
  %526 = icmp sge i32 %525, 48
  br i1 %526, label %527, label %546

527:                                              ; preds = %518
  %528 = load i8*, i8** %11, align 8
  %529 = load i32, i32* %6, align 4
  %530 = add nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, i8* %528, i64 %531
  %533 = load i8, i8* %532, align 1
  %534 = sext i8 %533 to i32
  %535 = icmp sle i32 %534, 57
  br i1 %535, label %536, label %546

536:                                              ; preds = %527
  %537 = load i8*, i8** %11, align 8
  %538 = load i32, i32* %6, align 4
  %539 = add nsw i32 %538, 1
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, i8* %537, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  store i32 %543, i32* %10, align 4
  %544 = load i32, i32* %6, align 4
  %545 = add nsw i32 %544, 2
  store i32 %545, i32* %6, align 4
  br label %549

546:                                              ; preds = %527, %518
  %547 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %548 = load i32, i32* @_FAIL, align 4
  store i32 %548, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

549:                                              ; preds = %536
  br label %563

550:                                              ; preds = %510
  %551 = load i8*, i8** %11, align 8
  %552 = load i32, i32* %6, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %551, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = load i32, i32* %26, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %557
  store i8 %555, i8* %558, align 1
  %559 = load i32, i32* %26, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %26, align 4
  %561 = load i32, i32* %6, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %6, align 4
  br label %484

563:                                              ; preds = %549, %508
  %564 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 0
  %565 = load i8, i8* %564, align 1
  %566 = sext i8 %565 to i32
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %563
  %569 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 0
  store i8 54, i8* %569, align 1
  %570 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 1
  store i8 51, i8* %570, align 1
  %571 = load i32, i32* %6, align 4
  %572 = add nsw i32 %571, 2
  store i32 %572, i32* %6, align 4
  br label %661

573:                                              ; preds = %563
  %574 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 0
  %575 = call i32 @GetU1ByteIntegerFromStringInDecimal(i8* %574, i32* %9)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %579, label %577

577:                                              ; preds = %573
  %578 = load i32, i32* @_FAIL, align 4
  store i32 %578, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

579:                                              ; preds = %573
  %580 = load i32, i32* %9, align 4
  %581 = mul nsw i32 %580, 2
  store i32 %581, i32* %9, align 4
  store i32 0, i32* %26, align 4
  %582 = load i32, i32* %10, align 4
  %583 = icmp eq i32 %582, 53
  br i1 %583, label %584, label %587

584:                                              ; preds = %579
  %585 = load i32, i32* %9, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %9, align 4
  br label %587

587:                                              ; preds = %584, %579
  %588 = load i32, i32* %9, align 4
  %589 = icmp sge i32 %588, 100
  br i1 %589, label %590, label %627

590:                                              ; preds = %587
  %591 = load i32, i32* %9, align 4
  %592 = sdiv i32 %591, 100
  %593 = add nsw i32 %592, 48
  %594 = trunc i32 %593 to i8
  %595 = load i32, i32* %26, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %26, align 4
  %597 = sext i32 %595 to i64
  %598 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %597
  store i8 %594, i8* %598, align 1
  %599 = load i32, i32* %9, align 4
  %600 = srem i32 %599, 100
  store i32 %600, i32* %9, align 4
  %601 = load i32, i32* %9, align 4
  %602 = icmp sge i32 %601, 10
  br i1 %602, label %603, label %614

603:                                              ; preds = %590
  %604 = load i32, i32* %9, align 4
  %605 = sdiv i32 %604, 10
  %606 = add nsw i32 %605, 48
  %607 = trunc i32 %606 to i8
  %608 = load i32, i32* %26, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %26, align 4
  %610 = sext i32 %608 to i64
  %611 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %610
  store i8 %607, i8* %611, align 1
  %612 = load i32, i32* %9, align 4
  %613 = srem i32 %612, 10
  store i32 %613, i32* %9, align 4
  br label %619

614:                                              ; preds = %590
  %615 = load i32, i32* %26, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %26, align 4
  %617 = sext i32 %615 to i64
  %618 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %617
  store i8 48, i8* %618, align 1
  br label %619

619:                                              ; preds = %614, %603
  %620 = load i32, i32* %9, align 4
  %621 = add nsw i32 %620, 48
  %622 = trunc i32 %621 to i8
  %623 = load i32, i32* %26, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %26, align 4
  %625 = sext i32 %623 to i64
  %626 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %625
  store i8 %622, i8* %626, align 1
  br label %657

627:                                              ; preds = %587
  %628 = load i32, i32* %9, align 4
  %629 = icmp sge i32 %628, 10
  br i1 %629, label %630, label %648

630:                                              ; preds = %627
  %631 = load i32, i32* %9, align 4
  %632 = sdiv i32 %631, 10
  %633 = add nsw i32 %632, 48
  %634 = trunc i32 %633 to i8
  %635 = load i32, i32* %26, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %26, align 4
  %637 = sext i32 %635 to i64
  %638 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %637
  store i8 %634, i8* %638, align 1
  %639 = load i32, i32* %9, align 4
  %640 = srem i32 %639, 10
  store i32 %640, i32* %9, align 4
  %641 = load i32, i32* %9, align 4
  %642 = add nsw i32 %641, 48
  %643 = trunc i32 %642 to i8
  %644 = load i32, i32* %26, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %26, align 4
  %646 = sext i32 %644 to i64
  %647 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %646
  store i8 %643, i8* %647, align 1
  br label %656

648:                                              ; preds = %627
  %649 = load i32, i32* %9, align 4
  %650 = add nsw i32 %649, 48
  %651 = trunc i32 %650 to i8
  %652 = load i32, i32* %26, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %26, align 4
  %654 = sext i32 %652 to i64
  %655 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %654
  store i8 %651, i8* %655, align 1
  br label %656

656:                                              ; preds = %648, %630
  br label %657

657:                                              ; preds = %656, %619
  %658 = load i32, i32* %26, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 %659
  store i8 0, i8* %660, align 1
  br label %661

661:                                              ; preds = %657, %568
  %662 = load %struct.adapter*, %struct.adapter** %4, align 8
  %663 = load i32, i32* %7, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [10 x i8], [10 x i8]* %31, i64 %664
  %666 = getelementptr inbounds [10 x i8], [10 x i8]* %665, i64 0, i64 0
  %667 = bitcast i8* %666 to i32*
  %668 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %669 = bitcast i8* %668 to i32*
  %670 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %671 = bitcast i8* %670 to i32*
  %672 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %673 = bitcast i8* %672 to i32*
  %674 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %675 = bitcast i8* %674 to i32*
  %676 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %677 = bitcast i8* %676 to i32*
  %678 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i64 0, i64 0
  %679 = bitcast i8* %678 to i32*
  %680 = call i32 @PHY_SetTxPowerLimit(%struct.adapter* %662, i32* %667, i32* %669, i32* %671, i32* %673, i32* %675, i32* %677, i32* %679)
  br label %681

681:                                              ; preds = %661
  %682 = load i32, i32* %7, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %7, align 4
  br label %455

684:                                              ; preds = %455
  br label %688

685:                                              ; preds = %344
  %686 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  %687 = load i32, i32* @_FAIL, align 4
  store i32 %687, i32* %13, align 4
  br label %695

688:                                              ; preds = %684
  br label %689

689:                                              ; preds = %688, %343
  br label %690

690:                                              ; preds = %689, %203
  br label %691

691:                                              ; preds = %690, %153
  br label %692

692:                                              ; preds = %691, %420, %391, %219, %169, %93, %53
  %693 = load i8*, i8** %12, align 8
  %694 = call i8* @GetLineFromBuffer(i8* %693)
  store i8* %694, i8** %11, align 8
  br label %46

695:                                              ; preds = %685, %46
  %696 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %697 = load i32, i32* %13, align 4
  store i32 %697, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %698

698:                                              ; preds = %695, %577, %546, %392, %336, %260, %254, %247, %200, %150, %142, %134, %126
  %699 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %699)
  %700 = load i32, i32* %3, align 4
  ret i32 %700
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DBG_871X(i8*, ...) #2

declare dso_local i32 @phy_DecryptBBPgParaFile(%struct.adapter*, i8*) #2

declare dso_local i8* @GetLineFromBuffer(i8*) #2

declare dso_local i64 @IsCommentString(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ParseQualifiedString(i8*, i32*, i8*, i8 signext, i8 signext) #2

declare dso_local i64 @eqNByte(i32*, i32*, i32) #2

declare dso_local i32 @GetU1ByteIntegerFromStringInDecimal(i8*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @PHY_SetTxPowerLimit(%struct.adapter*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
