; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_get_inb_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_get_inb_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i64, i64, i32*, i64, i32**, i64, i8*, %struct.tsi721_imsg_desc* }
%struct.tsi721_imsg_desc = type { i32, i32, i32 }

@TSI721_IMD_HO = common dso_local global i32 0, align 4
@TSI721_IMD_BCOUNT = common dso_local global i32 0, align 4
@RIO_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rio_mport*, i32)* @tsi721_get_inb_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tsi721_get_inb_message(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rio_mport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tsi721_device*, align 8
  %7 = alloca %struct.tsi721_imsg_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %16 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %15, i32 0, i32 0
  %17 = load %struct.tsi721_device*, %struct.tsi721_device** %16, align 8
  store %struct.tsi721_device* %17, %struct.tsi721_device** %6, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %21 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %274

29:                                               ; preds = %2
  %30 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %31 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %36, align 8
  store %struct.tsi721_imsg_desc* %37, %struct.tsi721_imsg_desc** %7, align 8
  %38 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %39 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %7, align 8
  %47 = getelementptr inbounds %struct.tsi721_imsg_desc, %struct.tsi721_imsg_desc* %46, i64 %45
  store %struct.tsi721_imsg_desc* %47, %struct.tsi721_imsg_desc** %7, align 8
  %48 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %7, align 8
  %49 = getelementptr inbounds %struct.tsi721_imsg_desc, %struct.tsi721_imsg_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32, i32* @TSI721_IMD_HO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %29
  br label %272

56:                                               ; preds = %29
  %57 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %58 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %91, %56
  %66 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %67 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %65
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  %81 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %82 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %80, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %90, %78
  br label %65

92:                                               ; preds = %65
  %93 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %7, align 8
  %94 = getelementptr inbounds %struct.tsi721_imsg_desc, %struct.tsi721_imsg_desc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = shl i32 %96, 32
  %98 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %7, align 8
  %99 = getelementptr inbounds %struct.tsi721_imsg_desc, %struct.tsi721_imsg_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = or i32 %97, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %104 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 7
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %113 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = sub nsw i32 %111, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %110, i64 %122
  store i8* %123, i8** %9, align 8
  %124 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %125 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = load i32**, i32*** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i32*, i32** %131, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to i8*
  store i8* %135, i8** %11, align 8
  %136 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %7, align 8
  %137 = getelementptr inbounds %struct.tsi721_imsg_desc, %struct.tsi721_imsg_desc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = load i32, i32* @TSI721_IMD_BCOUNT, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %92
  %145 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %144, %92
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @memcpy(i8* %147, i8* %148, i32 %149)
  %151 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %152 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 5
  %158 = load i32**, i32*** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds i32*, i32** %158, i64 %159
  store i32* null, i32** %160, align 8
  %161 = load i32, i32* @TSI721_IMD_HO, align 4
  %162 = xor i32 %161, -1
  %163 = call i32 @cpu_to_le32(i32 %162)
  %164 = load %struct.tsi721_imsg_desc*, %struct.tsi721_imsg_desc** %7, align 8
  %165 = getelementptr inbounds %struct.tsi721_imsg_desc, %struct.tsi721_imsg_desc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %169 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %174, align 8
  %177 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %178 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %176, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %146
  %187 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %188 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  br label %194

194:                                              ; preds = %186, %146
  %195 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %196 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %195, i32 0, i32 1
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %204 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = call i64 @TSI721_IBDMAC_DQRP(i32 %206)
  %208 = add nsw i64 %205, %207
  %209 = call i32 @iowrite32(i64 %202, i64 %208)
  %210 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %211 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %12, align 8
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @cpu_to_le64(i32 %218)
  %220 = load i32*, i32** %12, align 8
  %221 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %222 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %221, i32 0, i32 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds i32, i32* %220, i64 %228
  store i32 %219, i32* %229, align 4
  %230 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %231 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %236, align 8
  %239 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %240 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %239, i32 0, i32 1
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %238, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %194
  %249 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %250 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %249, i32 0, i32 1
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 4
  store i64 0, i64* %255, align 8
  br label %256

256:                                              ; preds = %248, %194
  %257 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %258 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %257, i32 0, i32 1
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %266 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i64 @TSI721_IBDMAC_FQWP(i32 %268)
  %270 = add nsw i64 %267, %269
  %271 = call i32 @iowrite32(i64 %264, i64 %270)
  br label %272

272:                                              ; preds = %256, %55
  %273 = load i8*, i8** %11, align 8
  store i8* %273, i8** %3, align 8
  br label %274

274:                                              ; preds = %272, %28
  %275 = load i8*, i8** %3, align 8
  ret i8* %275
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i64 @TSI721_IBDMAC_DQRP(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @TSI721_IBDMAC_FQWP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
