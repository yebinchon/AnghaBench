; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_load_waveform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_load_waveform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.metronomefb_par = type { i32*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.waveform_hdr = type { i32, i32, i32, i32, i64*, i32*, i8, i8, i32 }

@user_wfm_size = common dso_local global i64 0, align 8
@epd_frame_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Error: unexpected size %zd != %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Error: bad fvsn %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Error: bad luts %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error: bad cksum %x != %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Error: unexpected value in padding\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Error: bad temperature range table cksum %x != %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Error: bad mode table address cksum %x != %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Error: bad temperature table address cksum %x != %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Error: bad waveform data cksum %x != %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, %struct.metronomefb_par*)* @load_waveform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_waveform(i32* %0, i64 %1, i32 %2, i32 %3, %struct.metronomefb_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.metronomefb_par*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.waveform_hdr*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.device*, align 8
  %25 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.metronomefb_par* %4, %struct.metronomefb_par** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %21, align 4
  %26 = load %struct.metronomefb_par*, %struct.metronomefb_par** %11, align 8
  %27 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %23, align 8
  %29 = load %struct.metronomefb_par*, %struct.metronomefb_par** %11, align 8
  %30 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %24, align 8
  %34 = load i64, i64* @user_wfm_size, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %5
  %37 = load i64, i64* @user_wfm_size, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @epd_frame_table, align 8
  %39 = load %struct.metronomefb_par*, %struct.metronomefb_par** %11, align 8
  %40 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %37, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %5
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @epd_frame_table, align 8
  %47 = load %struct.metronomefb_par*, %struct.metronomefb_par** %11, align 8
  %48 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %45, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load %struct.device*, %struct.device** %24, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @epd_frame_table, align 8
  %58 = load %struct.metronomefb_par*, %struct.metronomefb_par** %11, align 8
  %59 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %449

67:                                               ; preds = %44
  %68 = load i32*, i32** %7, align 8
  %69 = bitcast i32* %68 to %struct.waveform_hdr*
  store %struct.waveform_hdr* %69, %struct.waveform_hdr** %22, align 8
  %70 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %71 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %24, align 8
  %76 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %77 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %449

82:                                               ; preds = %67
  %83 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %84 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %24, align 8
  %89 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %90 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %449

95:                                               ; preds = %82
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @calc_cksum(i32 32, i32 47, i32* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %100 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load %struct.device*, %struct.device** %24, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %107 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %449

112:                                              ; preds = %95
  %113 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %114 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %118 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %139, %112
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 5
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %126 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = load %struct.device*, %struct.device** %24, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %449

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %144 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 40, %146
  %148 = load i64, i64* %8, align 8
  %149 = icmp ugt i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %449

153:                                              ; preds = %142
  store i32 40, i32* %15, align 4
  br label %154

154:                                              ; preds = %178, %153
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %158 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 40, %160
  %162 = icmp ule i64 %156, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %154
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 40
  %175 = sub i64 %174, 1
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %14, align 4
  br label %181

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %154

181:                                              ; preds = %171, %154
  %182 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %183 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 40, %185
  %187 = add i64 %186, 1
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %8, align 8
  %192 = icmp uge i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %6, align 4
  br label %449

196:                                              ; preds = %181
  %197 = load i32, i32* %18, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @calc_cksum(i32 40, i32 %197, i32* %198)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %200, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %196
  %208 = load %struct.device*, %struct.device** %24, align 8
  %209 = load i32, i32* %17, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %208, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %209, i32 %214)
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %6, align 4
  br label %449

218:                                              ; preds = %196
  %219 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %220 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @get_unaligned_le32(i32* %221)
  %223 = and i32 %222, 16777215
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %9, align 4
  %226 = mul nsw i32 %225, 4
  %227 = add nsw i32 %224, %226
  %228 = add nsw i32 %227, 3
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %8, align 8
  %232 = icmp uge i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %218
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %6, align 4
  br label %449

236:                                              ; preds = %218
  %237 = load i32, i32* %18, align 4
  %238 = sub nsw i32 %237, 3
  %239 = load i32, i32* %18, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @calc_cksum(i32 %238, i32 %239, i32* %240)
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %17, align 4
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %242, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %236
  %250 = load %struct.device*, %struct.device** %24, align 8
  %251 = load i32, i32* %17, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %250, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %251, i32 %256)
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %6, align 4
  br label %449

260:                                              ; preds = %236
  %261 = load i32*, i32** %7, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %9, align 4
  %266 = mul nsw i32 %265, 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = call i32 @get_unaligned_le32(i32* %268)
  %270 = and i32 %269, 16777215
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %14, align 4
  %273 = mul nsw i32 %272, 4
  %274 = add nsw i32 %271, %273
  %275 = add nsw i32 %274, 3
  store i32 %275, i32* %18, align 4
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* %8, align 8
  %279 = icmp uge i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %260
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %6, align 4
  br label %449

283:                                              ; preds = %260
  %284 = load i32, i32* %18, align 4
  %285 = sub nsw i32 %284, 3
  %286 = load i32, i32* %18, align 4
  %287 = load i32*, i32** %7, align 8
  %288 = call i32 @calc_cksum(i32 %285, i32 %286, i32* %287)
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %17, align 4
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* %18, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %289, %294
  br i1 %295, label %296, label %307

296:                                              ; preds = %283
  %297 = load %struct.device*, %struct.device** %24, align 8
  %298 = load i32, i32* %17, align 4
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* %18, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %297, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %298, i32 %303)
  %305 = load i32, i32* @EINVAL, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %6, align 4
  br label %449

307:                                              ; preds = %283
  %308 = load i32*, i32** %7, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %14, align 4
  %313 = mul nsw i32 %312, 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  %316 = call i32 @get_unaligned_le32(i32* %315)
  %317 = and i32 %316, 16777215
  store i32 %317, i32* %19, align 4
  %318 = load i32, i32* %19, align 4
  store i32 %318, i32* %20, align 4
  %319 = load i32, i32* %19, align 4
  %320 = sext i32 %319 to i64
  %321 = load i64, i64* %8, align 8
  %322 = icmp uge i64 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %307
  %324 = load i32, i32* @EINVAL, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %6, align 4
  br label %449

326:                                              ; preds = %307
  br label %327

327:                                              ; preds = %411, %377, %326
  %328 = load i32, i32* %19, align 4
  %329 = sext i32 %328 to i64
  %330 = load i64, i64* %8, align 8
  %331 = icmp ult i64 %329, %330
  br i1 %331, label %332, label %412

332:                                              ; preds = %327
  %333 = load i32*, i32** %7, align 8
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %19, align 4
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %16, align 1
  %340 = load i8, i8* %16, align 1
  %341 = zext i8 %340 to i32
  %342 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %343 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %342, i32 0, i32 6
  %344 = load i8, i8* %343, align 8
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %341, %345
  br i1 %346, label %347, label %378

347:                                              ; preds = %332
  br label %348

348:                                              ; preds = %369, %347
  %349 = load i32*, i32** %7, align 8
  %350 = load i32, i32* %19, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %19, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %16, align 1
  %356 = zext i8 %355 to i32
  %357 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %358 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %357, i32 0, i32 6
  %359 = load i8, i8* %358, align 8
  %360 = zext i8 %359 to i32
  %361 = icmp ne i32 %356, %360
  br i1 %361, label %362, label %367

362:                                              ; preds = %348
  %363 = load i32, i32* %19, align 4
  %364 = sext i32 %363 to i64
  %365 = load i64, i64* %8, align 8
  %366 = icmp ult i64 %364, %365
  br label %367

367:                                              ; preds = %362, %348
  %368 = phi i1 [ false, %348 ], [ %366, %362 ]
  br i1 %368, label %369, label %377

369:                                              ; preds = %367
  %370 = load i8, i8* %16, align 1
  %371 = zext i8 %370 to i32
  %372 = load i32*, i32** %23, align 8
  %373 = load i32, i32* %21, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %21, align 4
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i32, i32* %372, i64 %375
  store i32 %371, i32* %376, align 4
  br label %348

377:                                              ; preds = %367
  br label %327

378:                                              ; preds = %332
  %379 = load i8, i8* %16, align 1
  %380 = zext i8 %379 to i32
  %381 = load %struct.waveform_hdr*, %struct.waveform_hdr** %22, align 8
  %382 = getelementptr inbounds %struct.waveform_hdr, %struct.waveform_hdr* %381, i32 0, i32 7
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = icmp eq i32 %380, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %378
  br label %412

387:                                              ; preds = %378
  %388 = load i32*, i32** %7, align 8
  %389 = load i32, i32* %19, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %19, align 4
  %391 = sext i32 %389 to i64
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %25, align 1
  store i32 0, i32* %15, align 4
  br label %395

395:                                              ; preds = %408, %387
  %396 = load i32, i32* %15, align 4
  %397 = load i8, i8* %25, align 1
  %398 = zext i8 %397 to i32
  %399 = icmp sle i32 %396, %398
  br i1 %399, label %400, label %411

400:                                              ; preds = %395
  %401 = load i8, i8* %16, align 1
  %402 = zext i8 %401 to i32
  %403 = load i32*, i32** %23, align 8
  %404 = load i32, i32* %21, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %21, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %403, i64 %406
  store i32 %402, i32* %407, align 4
  br label %408

408:                                              ; preds = %400
  %409 = load i32, i32* %15, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %15, align 4
  br label %395

411:                                              ; preds = %395
  br label %327

412:                                              ; preds = %386, %327
  %413 = load i32, i32* %19, align 4
  store i32 %413, i32* %18, align 4
  %414 = load i32, i32* %18, align 4
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %8, align 8
  %417 = icmp uge i64 %415, %416
  br i1 %417, label %418, label %421

418:                                              ; preds = %412
  %419 = load i32, i32* @EINVAL, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %6, align 4
  br label %449

421:                                              ; preds = %412
  %422 = load i32, i32* %20, align 4
  %423 = load i32, i32* %18, align 4
  %424 = load i32*, i32** %7, align 8
  %425 = call i32 @calc_cksum(i32 %422, i32 %423, i32* %424)
  store i32 %425, i32* %17, align 4
  %426 = load i32, i32* %17, align 4
  %427 = load i32*, i32** %7, align 8
  %428 = load i32, i32* %18, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = icmp ne i32 %426, %431
  br i1 %432, label %433, label %444

433:                                              ; preds = %421
  %434 = load %struct.device*, %struct.device** %24, align 8
  %435 = load i32, i32* %17, align 4
  %436 = load i32*, i32** %7, align 8
  %437 = load i32, i32* %18, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %434, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %435, i32 %440)
  %442 = load i32, i32* @EINVAL, align 4
  %443 = sub nsw i32 0, %442
  store i32 %443, i32* %6, align 4
  br label %449

444:                                              ; preds = %421
  %445 = load i32, i32* %21, align 4
  %446 = sdiv i32 %445, 64
  %447 = load %struct.metronomefb_par*, %struct.metronomefb_par** %11, align 8
  %448 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 8
  store i32 0, i32* %6, align 4
  br label %449

449:                                              ; preds = %444, %433, %418, %323, %296, %280, %249, %233, %207, %193, %150, %133, %103, %87, %74, %54
  %450 = load i32, i32* %6, align 4
  ret i32 %450
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @calc_cksum(i32, i32, i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
