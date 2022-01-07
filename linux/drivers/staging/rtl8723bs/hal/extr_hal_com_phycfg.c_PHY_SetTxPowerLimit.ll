; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_SetTxPowerLimit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_SetTxPowerLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64*****, i64***** }

@.str = private unnamed_addr constant [54 x i8] c"Illegal index of power limit table [chnl %s][val %s]\0A\00", align 1
@MAX_POWER_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MKK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ETSI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WW13\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1T\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"HT\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"2T\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"3T\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"4T\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"VHT\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Wrong rate section!\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"20M\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"40M\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"80M\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"160M\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"2.4G\00", align 1
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@BAND_ON_5G = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [38 x i8] c"Cannot recognize the band info in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SetTxPowerLimit(%struct.adapter* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.hal_com_data*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %25 = load %struct.adapter*, %struct.adapter** %9, align 8
  %26 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %25)
  store %struct.hal_com_data* %26, %struct.hal_com_data** %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %22, align 8
  %27 = load i64*, i64** %15, align 8
  %28 = call i32 (i64*, ...) @GetU1ByteIntegerFromStringInDecimal(i64* %27, i64* %21)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %8
  %31 = load i64*, i64** %16, align 8
  %32 = call i32 (i64*, ...) @GetU1ByteIntegerFromStringInDecimal(i64* %31, i64* %22)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %8
  %35 = load i64*, i64** %15, align 8
  %36 = load i64*, i64** %16, align 8
  %37 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64* %35, i64* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %22, align 8
  %40 = load i64, i64* @MAX_POWER_INDEX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @MAX_POWER_INDEX, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %22, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  store i64 %47, i64* %22, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = call i64 @eqNByte(i64* %48, i64* bitcast ([4 x i8]* @.str.1 to i64*), i32 3)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64 0, i64* %18, align 8
  br label %70

52:                                               ; preds = %46
  %53 = load i64*, i64** %10, align 8
  %54 = call i64 @eqNByte(i64* %53, i64* bitcast ([4 x i8]* @.str.2 to i64*), i32 3)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 1, i64* %18, align 8
  br label %69

57:                                               ; preds = %52
  %58 = load i64*, i64** %10, align 8
  %59 = call i64 @eqNByte(i64* %58, i64* bitcast ([5 x i8]* @.str.3 to i64*), i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 2, i64* %18, align 8
  br label %68

62:                                               ; preds = %57
  %63 = load i64*, i64** %10, align 8
  %64 = call i64 @eqNByte(i64* %63, i64* bitcast ([5 x i8]* @.str.4 to i64*), i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i64 3, i64* %18, align 8
  br label %67

67:                                               ; preds = %66, %62
  br label %68

68:                                               ; preds = %67, %61
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i64*, i64** %13, align 8
  %72 = call i64 @eqNByte(i64* %71, i64* bitcast ([4 x i8]* @.str.5 to i64*), i32 3)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i64*, i64** %14, align 8
  %76 = call i64 @eqNByte(i64* %75, i64* bitcast ([3 x i8]* @.str.6 to i64*), i32 2)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 0, i64* %20, align 8
  br label %171

79:                                               ; preds = %74, %70
  %80 = load i64*, i64** %13, align 8
  %81 = call i64 @eqNByte(i64* %80, i64* bitcast ([5 x i8]* @.str.7 to i64*), i32 4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i64*, i64** %14, align 8
  %85 = call i64 @eqNByte(i64* %84, i64* bitcast ([3 x i8]* @.str.6 to i64*), i32 2)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i64 1, i64* %20, align 8
  br label %170

88:                                               ; preds = %83, %79
  %89 = load i64*, i64** %13, align 8
  %90 = call i64 @eqNByte(i64* %89, i64* bitcast ([3 x i8]* @.str.8 to i64*), i32 2)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i64*, i64** %14, align 8
  %94 = call i64 @eqNByte(i64* %93, i64* bitcast ([3 x i8]* @.str.6 to i64*), i32 2)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i64 2, i64* %20, align 8
  br label %169

97:                                               ; preds = %92, %88
  %98 = load i64*, i64** %13, align 8
  %99 = call i64 @eqNByte(i64* %98, i64* bitcast ([3 x i8]* @.str.8 to i64*), i32 2)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i64*, i64** %14, align 8
  %103 = call i64 @eqNByte(i64* %102, i64* bitcast ([3 x i8]* @.str.9 to i64*), i32 2)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i64 3, i64* %20, align 8
  br label %168

106:                                              ; preds = %101, %97
  %107 = load i64*, i64** %13, align 8
  %108 = call i64 @eqNByte(i64* %107, i64* bitcast ([3 x i8]* @.str.8 to i64*), i32 2)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i64*, i64** %14, align 8
  %112 = call i64 @eqNByte(i64* %111, i64* bitcast ([3 x i8]* @.str.10 to i64*), i32 2)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i64 4, i64* %20, align 8
  br label %167

115:                                              ; preds = %110, %106
  %116 = load i64*, i64** %13, align 8
  %117 = call i64 @eqNByte(i64* %116, i64* bitcast ([3 x i8]* @.str.8 to i64*), i32 2)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i64*, i64** %14, align 8
  %121 = call i64 @eqNByte(i64* %120, i64* bitcast ([3 x i8]* @.str.11 to i64*), i32 2)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i64 5, i64* %20, align 8
  br label %166

124:                                              ; preds = %119, %115
  %125 = load i64*, i64** %13, align 8
  %126 = call i64 @eqNByte(i64* %125, i64* bitcast ([4 x i8]* @.str.12 to i64*), i32 3)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i64*, i64** %14, align 8
  %130 = call i64 @eqNByte(i64* %129, i64* bitcast ([3 x i8]* @.str.6 to i64*), i32 2)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i64 6, i64* %20, align 8
  br label %165

133:                                              ; preds = %128, %124
  %134 = load i64*, i64** %13, align 8
  %135 = call i64 @eqNByte(i64* %134, i64* bitcast ([4 x i8]* @.str.12 to i64*), i32 3)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i64*, i64** %14, align 8
  %139 = call i64 @eqNByte(i64* %138, i64* bitcast ([3 x i8]* @.str.9 to i64*), i32 2)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i64 7, i64* %20, align 8
  br label %164

142:                                              ; preds = %137, %133
  %143 = load i64*, i64** %13, align 8
  %144 = call i64 @eqNByte(i64* %143, i64* bitcast ([4 x i8]* @.str.12 to i64*), i32 3)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i64*, i64** %14, align 8
  %148 = call i64 @eqNByte(i64* %147, i64* bitcast ([3 x i8]* @.str.10 to i64*), i32 2)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i64 8, i64* %20, align 8
  br label %163

151:                                              ; preds = %146, %142
  %152 = load i64*, i64** %13, align 8
  %153 = call i64 @eqNByte(i64* %152, i64* bitcast ([4 x i8]* @.str.12 to i64*), i32 3)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i64*, i64** %14, align 8
  %157 = call i64 @eqNByte(i64* %156, i64* bitcast ([3 x i8]* @.str.11 to i64*), i32 2)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i64 9, i64* %20, align 8
  br label %162

160:                                              ; preds = %155, %151
  %161 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %304

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %141
  br label %165

165:                                              ; preds = %164, %132
  br label %166

166:                                              ; preds = %165, %123
  br label %167

167:                                              ; preds = %166, %114
  br label %168

168:                                              ; preds = %167, %105
  br label %169

169:                                              ; preds = %168, %96
  br label %170

170:                                              ; preds = %169, %87
  br label %171

171:                                              ; preds = %170, %78
  %172 = load i64*, i64** %12, align 8
  %173 = call i64 @eqNByte(i64* %172, i64* bitcast ([4 x i8]* @.str.14 to i64*), i32 3)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i64 0, i64* %19, align 8
  br label %194

176:                                              ; preds = %171
  %177 = load i64*, i64** %12, align 8
  %178 = call i64 @eqNByte(i64* %177, i64* bitcast ([4 x i8]* @.str.15 to i64*), i32 3)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i64 1, i64* %19, align 8
  br label %193

181:                                              ; preds = %176
  %182 = load i64*, i64** %12, align 8
  %183 = call i64 @eqNByte(i64* %182, i64* bitcast ([4 x i8]* @.str.16 to i64*), i32 3)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i64 2, i64* %19, align 8
  br label %192

186:                                              ; preds = %181
  %187 = load i64*, i64** %12, align 8
  %188 = call i64 @eqNByte(i64* %187, i64* bitcast ([5 x i8]* @.str.17 to i64*), i32 4)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i64 3, i64* %19, align 8
  br label %191

191:                                              ; preds = %190, %186
  br label %192

192:                                              ; preds = %191, %185
  br label %193

193:                                              ; preds = %192, %180
  br label %194

194:                                              ; preds = %193, %175
  %195 = load i64*, i64** %11, align 8
  %196 = call i64 @eqNByte(i64* %195, i64* bitcast ([5 x i8]* @.str.18 to i64*), i32 4)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %194
  %199 = load i32, i32* @BAND_ON_2_4G, align 4
  %200 = load i64, i64* %21, align 8
  %201 = call i64 @phy_GetChannelIndexOfTxPowerLimit(i32 %199, i64 %200)
  store i64 %201, i64* %24, align 8
  %202 = load i64, i64* %24, align 8
  %203 = icmp eq i64 %202, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %304

205:                                              ; preds = %198
  %206 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %207 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %206, i32 0, i32 0
  %208 = load i64*****, i64****** %207, align 8
  %209 = load i64, i64* %18, align 8
  %210 = getelementptr inbounds i64****, i64***** %208, i64 %209
  %211 = load i64****, i64***** %210, align 8
  %212 = load i64, i64* %19, align 8
  %213 = getelementptr inbounds i64***, i64**** %211, i64 %212
  %214 = load i64***, i64**** %213, align 8
  %215 = load i64, i64* %20, align 8
  %216 = getelementptr inbounds i64**, i64*** %214, i64 %215
  %217 = load i64**, i64*** %216, align 8
  %218 = load i64, i64* %24, align 8
  %219 = getelementptr inbounds i64*, i64** %217, i64 %218
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* @ODM_RF_PATH_A, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %23, align 8
  %224 = load i64, i64* %22, align 8
  %225 = load i64, i64* %23, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %205
  %228 = load i64, i64* %22, align 8
  %229 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %230 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %229, i32 0, i32 0
  %231 = load i64*****, i64****** %230, align 8
  %232 = load i64, i64* %18, align 8
  %233 = getelementptr inbounds i64****, i64***** %231, i64 %232
  %234 = load i64****, i64***** %233, align 8
  %235 = load i64, i64* %19, align 8
  %236 = getelementptr inbounds i64***, i64**** %234, i64 %235
  %237 = load i64***, i64**** %236, align 8
  %238 = load i64, i64* %20, align 8
  %239 = getelementptr inbounds i64**, i64*** %237, i64 %238
  %240 = load i64**, i64*** %239, align 8
  %241 = load i64, i64* %24, align 8
  %242 = getelementptr inbounds i64*, i64** %240, i64 %241
  %243 = load i64*, i64** %242, align 8
  %244 = load i64, i64* @ODM_RF_PATH_A, align 8
  %245 = getelementptr inbounds i64, i64* %243, i64 %244
  store i64 %228, i64* %245, align 8
  br label %246

246:                                              ; preds = %227, %205
  br label %304

247:                                              ; preds = %194
  %248 = load i64*, i64** %11, align 8
  %249 = call i64 @eqNByte(i64* %248, i64* bitcast ([3 x i8]* @.str.19 to i64*), i32 2)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %300

251:                                              ; preds = %247
  %252 = load i32, i32* @BAND_ON_5G, align 4
  %253 = load i64, i64* %21, align 8
  %254 = call i64 @phy_GetChannelIndexOfTxPowerLimit(i32 %252, i64 %253)
  store i64 %254, i64* %24, align 8
  %255 = load i64, i64* %24, align 8
  %256 = icmp eq i64 %255, -1
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %304

258:                                              ; preds = %251
  %259 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %260 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %259, i32 0, i32 1
  %261 = load i64*****, i64****** %260, align 8
  %262 = load i64, i64* %18, align 8
  %263 = getelementptr inbounds i64****, i64***** %261, i64 %262
  %264 = load i64****, i64***** %263, align 8
  %265 = load i64, i64* %19, align 8
  %266 = getelementptr inbounds i64***, i64**** %264, i64 %265
  %267 = load i64***, i64**** %266, align 8
  %268 = load i64, i64* %20, align 8
  %269 = getelementptr inbounds i64**, i64*** %267, i64 %268
  %270 = load i64**, i64*** %269, align 8
  %271 = load i64, i64* %24, align 8
  %272 = getelementptr inbounds i64*, i64** %270, i64 %271
  %273 = load i64*, i64** %272, align 8
  %274 = load i64, i64* @ODM_RF_PATH_A, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %23, align 8
  %277 = load i64, i64* %22, align 8
  %278 = load i64, i64* %23, align 8
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %280, label %299

280:                                              ; preds = %258
  %281 = load i64, i64* %22, align 8
  %282 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %283 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %282, i32 0, i32 1
  %284 = load i64*****, i64****** %283, align 8
  %285 = load i64, i64* %18, align 8
  %286 = getelementptr inbounds i64****, i64***** %284, i64 %285
  %287 = load i64****, i64***** %286, align 8
  %288 = load i64, i64* %19, align 8
  %289 = getelementptr inbounds i64***, i64**** %287, i64 %288
  %290 = load i64***, i64**** %289, align 8
  %291 = load i64, i64* %20, align 8
  %292 = getelementptr inbounds i64**, i64*** %290, i64 %291
  %293 = load i64**, i64*** %292, align 8
  %294 = load i64, i64* %24, align 8
  %295 = getelementptr inbounds i64*, i64** %293, i64 %294
  %296 = load i64*, i64** %295, align 8
  %297 = load i64, i64* @ODM_RF_PATH_A, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  store i64 %281, i64* %298, align 8
  br label %299

299:                                              ; preds = %280, %258
  br label %303

300:                                              ; preds = %247
  %301 = load i64*, i64** %11, align 8
  %302 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i64* %301)
  br label %304

303:                                              ; preds = %299
  br label %304

304:                                              ; preds = %160, %204, %257, %300, %303, %246
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @GetU1ByteIntegerFromStringInDecimal(i64*, ...) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i64 @eqNByte(i64*, i64*, i32) #1

declare dso_local i64 @phy_GetChannelIndexOfTxPowerLimit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
