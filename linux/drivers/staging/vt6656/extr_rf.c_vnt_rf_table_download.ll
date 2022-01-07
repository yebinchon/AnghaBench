; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_table_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_table_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@CB_AL2230_INIT_SEQ = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL_24G = common dso_local global i32 0, align 4
@al2230_init_table = common dso_local global i32** null, align 8
@al2230_channel_table0 = common dso_local global i32** null, align 8
@al2230_channel_table1 = common dso_local global i32** null, align 8
@CB_AL7230_INIT_SEQ = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL = common dso_local global i32 0, align 4
@al7230_init_table = common dso_local global i32** null, align 8
@al7230_channel_table0 = common dso_local global i32** null, align 8
@al7230_channel_table1 = common dso_local global i32** null, align 8
@CB_VT3226_INIT_SEQ = common dso_local global i32 0, align 4
@vt3226_init_table = common dso_local global i32** null, align 8
@vt3226_channel_table0 = common dso_local global i32** null, align 8
@vt3226_channel_table1 = common dso_local global i32** null, align 8
@vt3226d0_init_table = common dso_local global i32** null, align 8
@CB_VT3342_INIT_SEQ = common dso_local global i32 0, align 4
@vt3342a0_init_table = common dso_local global i32** null, align 8
@vt3342_channel_table0 = common dso_local global i32** null, align 8
@vt3342_channel_table1 = common dso_local global i32** null, align 8
@MESSAGE_TYPE_WRITE = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_RF_INIT = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_RF_CH0 = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_RF_CH1 = common dso_local global i32 0, align 4
@al7230_init_table_amode = common dso_local global i32** null, align 8
@al7230_channel_table2 = common dso_local global i32** null, align 8
@MESSAGE_REQUEST_RF_INIT2 = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_RF_CH2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_rf_table_download(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i32], align 16
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %111 [
    i32 132, label %16
    i32 131, label %16
    i32 133, label %35
    i32 130, label %54
    i32 129, label %73
    i32 128, label %92
  ]

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @CB_AL2230_INIT_SEQ, align 4
  %18 = mul nsw i32 %17, 3
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %20 = mul nsw i32 %19, 3
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %22 = mul nsw i32 %21, 3
  store i32 %22, i32* %6, align 4
  %23 = load i32**, i32*** @al2230_init_table, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32* %26, i32** %7, align 8
  %27 = load i32**, i32*** @al2230_channel_table0, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %8, align 8
  %31 = load i32**, i32*** @al2230_channel_table1, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** %9, align 8
  br label %111

35:                                               ; preds = %1
  %36 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %37 = mul nsw i32 %36, 3
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %39 = mul nsw i32 %38, 3
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %41 = mul nsw i32 %40, 3
  store i32 %41, i32* %6, align 4
  %42 = load i32**, i32*** @al7230_init_table, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32* %45, i32** %7, align 8
  %46 = load i32**, i32*** @al7230_channel_table0, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32* %49, i32** %8, align 8
  %50 = load i32**, i32*** @al7230_channel_table1, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32* %53, i32** %9, align 8
  br label %111

54:                                               ; preds = %1
  %55 = load i32, i32* @CB_VT3226_INIT_SEQ, align 4
  %56 = mul nsw i32 %55, 3
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %58 = mul nsw i32 %57, 3
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %60 = mul nsw i32 %59, 3
  store i32 %60, i32* %6, align 4
  %61 = load i32**, i32*** @vt3226_init_table, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32* %64, i32** %7, align 8
  %65 = load i32**, i32*** @vt3226_channel_table0, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32* %68, i32** %8, align 8
  %69 = load i32**, i32*** @vt3226_channel_table1, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32* %72, i32** %9, align 8
  br label %111

73:                                               ; preds = %1
  %74 = load i32, i32* @CB_VT3226_INIT_SEQ, align 4
  %75 = mul nsw i32 %74, 3
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %77 = mul nsw i32 %76, 3
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %79 = mul nsw i32 %78, 3
  store i32 %79, i32* %6, align 4
  %80 = load i32**, i32*** @vt3226d0_init_table, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32* %83, i32** %7, align 8
  %84 = load i32**, i32*** @vt3226_channel_table0, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32* %87, i32** %8, align 8
  %88 = load i32**, i32*** @vt3226_channel_table1, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32* %91, i32** %9, align 8
  br label %111

92:                                               ; preds = %1
  %93 = load i32, i32* @CB_VT3342_INIT_SEQ, align 4
  %94 = mul nsw i32 %93, 3
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %96 = mul nsw i32 %95, 3
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %98 = mul nsw i32 %97, 3
  store i32 %98, i32* %6, align 4
  %99 = load i32**, i32*** @vt3342a0_init_table, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32* %102, i32** %7, align 8
  %103 = load i32**, i32*** @vt3342_channel_table0, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32* %106, i32** %8, align 8
  %107 = load i32**, i32*** @vt3342_channel_table1, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32* %110, i32** %9, align 8
  br label %111

111:                                              ; preds = %1, %92, %73, %54, %35, %16
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @memcpy(i32* %112, i32* %113, i32 %114)
  %116 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %117 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %118 = load i32, i32* @MESSAGE_REQUEST_RF_INIT, align 4
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %121 = call i32 @vnt_control_out(%struct.vnt_private* %116, i32 %117, i32 0, i32 %118, i32 %119, i32* %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %266

125:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %150, %125
  %127 = load i32, i32* %5, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %126
  %130 = load i32, i32* %5, align 4
  %131 = icmp sge i32 %130, 64
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 64, i32* %10, align 4
  br label %135

133:                                              ; preds = %129
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %133, %132
  %136 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @memcpy(i32* %136, i32* %137, i32 %138)
  %140 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %141 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @MESSAGE_REQUEST_RF_CH0, align 4
  %144 = load i32, i32* %10, align 4
  %145 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %146 = call i32 @vnt_control_out(%struct.vnt_private* %140, i32 %141, i32 %142, i32 %143, i32 %144, i32* %145)
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %266

150:                                              ; preds = %135
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %5, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %8, align 8
  br label %126

161:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %186, %161
  %163 = load i32, i32* %6, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %162
  %166 = load i32, i32* %6, align 4
  %167 = icmp sge i32 %166, 64
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 64, i32* %10, align 4
  br label %171

169:                                              ; preds = %165
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @memcpy(i32* %172, i32* %173, i32 %174)
  %176 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %177 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @MESSAGE_REQUEST_RF_CH1, align 4
  %180 = load i32, i32* %10, align 4
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %182 = call i32 @vnt_control_out(%struct.vnt_private* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32* %181)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %171
  br label %266

186:                                              ; preds = %171
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %6, align 4
  %189 = sub nsw i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %9, align 8
  br label %162

197:                                              ; preds = %162
  %198 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %199 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 133
  br i1 %201, label %202, label %265

202:                                              ; preds = %197
  %203 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %204 = mul nsw i32 %203, 3
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %206 = mul nsw i32 %205, 3
  store i32 %206, i32* %5, align 4
  %207 = load i32**, i32*** @al7230_init_table_amode, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32* %210, i32** %7, align 8
  %211 = load i32**, i32*** @al7230_channel_table2, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32* %214, i32** %8, align 8
  %215 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @memcpy(i32* %215, i32* %216, i32 %217)
  %219 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %220 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %221 = load i32, i32* @MESSAGE_REQUEST_RF_INIT2, align 4
  %222 = load i32, i32* %4, align 4
  %223 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %224 = call i32 @vnt_control_out(%struct.vnt_private* %219, i32 %220, i32 0, i32 %221, i32 %222, i32* %223)
  store i32 %224, i32* %3, align 4
  %225 = load i32, i32* %3, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %202
  br label %266

228:                                              ; preds = %202
  store i32 0, i32* %11, align 4
  br label %229

229:                                              ; preds = %253, %228
  %230 = load i32, i32* %5, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %264

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = icmp sge i32 %233, 64
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  store i32 64, i32* %10, align 4
  br label %238

236:                                              ; preds = %232
  %237 = load i32, i32* %5, align 4
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %236, %235
  %239 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @memcpy(i32* %239, i32* %240, i32 %241)
  %243 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %244 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* @MESSAGE_REQUEST_RF_CH2, align 4
  %247 = load i32, i32* %10, align 4
  %248 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %249 = call i32 @vnt_control_out(%struct.vnt_private* %243, i32 %244, i32 %245, i32 %246, i32 %247, i32* %248)
  store i32 %249, i32* %3, align 4
  %250 = load i32, i32* %3, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %238
  br label %266

253:                                              ; preds = %238
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %5, align 4
  %256 = sub nsw i32 %255, %254
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %10, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32* %263, i32** %8, align 8
  br label %229

264:                                              ; preds = %229
  br label %265

265:                                              ; preds = %264, %197
  br label %266

266:                                              ; preds = %265, %252, %227, %185, %149, %124
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
