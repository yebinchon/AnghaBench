; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_i2c_master_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_i2c_master_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%struct.i2c_msg = type { i64, i32, i64, i64* }
%struct.w1_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@W1_F19_WRITE_DATA_LIMIT = common dso_local global i64 0, align 8
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @w1_f19_i2c_master_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f19_i2c_master_transfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.w1_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.w1_slave*
  store %struct.w1_slave* %13, %struct.w1_slave** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %15 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %20 = call i64 @w1_reset_select_slave(%struct.w1_slave* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %290

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %288, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %289

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %165

35:                                               ; preds = %30
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 %38
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 %45
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %41, %48
  br i1 %49, label %50, label %165

50:                                               ; preds = %35
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 %53
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I2C_M_RD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %165, label %60

60:                                               ; preds = %50
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I2C_M_RD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %165

71:                                               ; preds = %60
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %79 = icmp sle i64 %77, %78
  br i1 %79, label %80, label %165

80:                                               ; preds = %71
  %81 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i64 %84
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i64 %90
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i64 %96
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 %103
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i64 %110
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @w1_f19_i2c_write_read(%struct.w1_slave* %81, i64 %87, i64* %93, i64 %99, i64* %106, i64 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %80
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %8, align 4
  br label %290

119:                                              ; preds = %80
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 %123
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %119
  %131 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i64 %135
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 %142
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 3
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i64 %150
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 3
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @w1_f19_i2c_read(%struct.w1_slave* %131, i64 %138, i64* %146, i64 %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %130
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %8, align 4
  br label %290

161:                                              ; preds = %130
  br label %162

162:                                              ; preds = %161, %119
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %272

165:                                              ; preds = %71, %60, %50, %35, %30
  %166 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i64 %168
  %170 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @I2C_M_RD, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %240

175:                                              ; preds = %165
  %176 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %177 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %177, i64 %179
  %181 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i64 %185
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %186, i32 0, i32 3
  %188 = load i64*, i64** %187, align 8
  %189 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i64 %191
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @w1_f19_i2c_read(%struct.w1_slave* %176, i64 %182, i64* %188, i64 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %175
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %8, align 4
  br label %290

200:                                              ; preds = %175
  %201 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i64 %203
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %200
  %211 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %212 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %212, i64 %214
  %216 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %218, i64 %220
  %222 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %221, i32 0, i32 3
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 1
  %225 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %225, i64 %227
  %229 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %228, i32 0, i32 3
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @w1_f19_i2c_read(%struct.w1_slave* %211, i64 %217, i64* %224, i64 %232)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %210
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %8, align 4
  br label %290

238:                                              ; preds = %210
  br label %239

239:                                              ; preds = %238, %200
  br label %271

240:                                              ; preds = %165
  %241 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %242 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %242, i64 %244
  %246 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %248, i64 %250
  %252 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %251, i32 0, i32 3
  %253 = load i64*, i64** %252, align 8
  %254 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %254, i64 %256
  %258 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %6, align 4
  %262 = sub nsw i32 %261, 1
  %263 = icmp eq i32 %260, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @w1_f19_i2c_write(%struct.w1_slave* %241, i64 %247, i64* %253, i64 %259, i32 %264)
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %240
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %8, align 4
  br label %290

270:                                              ; preds = %240
  br label %271

271:                                              ; preds = %270, %239
  br label %272

272:                                              ; preds = %271, %162
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %6, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %272
  %279 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %280 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %279, i32 0, i32 0
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = call i64 @w1_reset_resume_command(%struct.TYPE_2__* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %278
  %285 = load i32, i32* @EIO, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %8, align 4
  br label %290

287:                                              ; preds = %278
  br label %288

288:                                              ; preds = %287, %272
  br label %26

289:                                              ; preds = %26
  br label %290

290:                                              ; preds = %289, %284, %268, %236, %198, %159, %117, %22
  %291 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %292 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %291, i32 0, i32 0
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = call i32 @mutex_unlock(i32* %294)
  %296 = load i32, i32* %8, align 4
  ret i32 %296
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_f19_i2c_write_read(%struct.w1_slave*, i64, i64*, i64, i64*, i64) #1

declare dso_local i32 @w1_f19_i2c_read(%struct.w1_slave*, i64, i64*, i64) #1

declare dso_local i32 @w1_f19_i2c_write(%struct.w1_slave*, i64, i64*, i64, i32) #1

declare dso_local i64 @w1_reset_resume_command(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
