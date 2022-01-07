; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32*, %struct.mem_array*, %struct.mem_array*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.mem_array = type { i32, i32, i32, %struct.mem_array*, %struct.mem_array*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hwi_controller = type { i32, i32, i32, %struct.hwi_controller*, %struct.hwi_controller*, %struct.TYPE_10__, i32 }
%struct.be_mem_descriptor = type { i32, i32, i32, %struct.be_mem_descriptor*, %struct.be_mem_descriptor*, %struct.TYPE_10__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SE_MEM_MAX = common dso_local global i32 0, align 4
@BEISCSI_MAX_FRAGS_INIT = common dso_local global i32 0, align 4
@be_max_phys_size = common dso_local global i32 0, align 4
@BE_MIN_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_alloc_mem(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hwi_controller*, align 8
  %6 = alloca %struct.be_mem_descriptor*, align 8
  %7 = alloca %struct.mem_array*, align 8
  %8 = alloca %struct.mem_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mem_array* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 1
  store %struct.mem_array* %18, %struct.mem_array** %20, align 8
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 1
  %23 = load %struct.mem_array*, %struct.mem_array** %22, align 8
  %24 = icmp ne %struct.mem_array* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %332

28:                                               ; preds = %1
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 1
  %31 = load %struct.mem_array*, %struct.mem_array** %30, align 8
  %32 = bitcast %struct.mem_array* %31 to %struct.hwi_controller*
  store %struct.hwi_controller* %32, %struct.hwi_controller** %5, align 8
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.hwi_controller*
  %40 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %41 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %40, i32 0, i32 3
  store %struct.hwi_controller* %39, %struct.hwi_controller** %41, align 8
  %42 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %43 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %42, i32 0, i32 3
  %44 = load %struct.hwi_controller*, %struct.hwi_controller** %43, align 8
  %45 = icmp ne %struct.hwi_controller* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %28
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %47, i32 0, i32 1
  %49 = load %struct.mem_array*, %struct.mem_array** %48, align 8
  %50 = call i32 @kfree(%struct.mem_array* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %332

53:                                               ; preds = %28
  %54 = load i32, i32* @SE_MEM_MAX, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kcalloc(i32 %54, i32 48, i32 %55)
  %57 = bitcast i8* %56 to %struct.mem_array*
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %59 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %58, i32 0, i32 2
  store %struct.mem_array* %57, %struct.mem_array** %59, align 8
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %61 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %60, i32 0, i32 2
  %62 = load %struct.mem_array*, %struct.mem_array** %61, align 8
  %63 = icmp ne %struct.mem_array* %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %53
  %65 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %66 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %65, i32 0, i32 3
  %67 = load %struct.hwi_controller*, %struct.hwi_controller** %66, align 8
  %68 = bitcast %struct.hwi_controller* %67 to %struct.mem_array*
  %69 = call i32 @kfree(%struct.mem_array* %68)
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 1
  %72 = load %struct.mem_array*, %struct.mem_array** %71, align 8
  %73 = call i32 @kfree(%struct.mem_array* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %332

76:                                               ; preds = %53
  %77 = load i32, i32* @BEISCSI_MAX_FRAGS_INIT, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kmalloc_array(i32 %77, i32 48, i32 %78)
  %80 = bitcast i8* %79 to %struct.mem_array*
  store %struct.mem_array* %80, %struct.mem_array** %8, align 8
  %81 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %82 = icmp ne %struct.mem_array* %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %85 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %84, i32 0, i32 2
  %86 = load %struct.mem_array*, %struct.mem_array** %85, align 8
  %87 = call i32 @kfree(%struct.mem_array* %86)
  %88 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %89 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %88, i32 0, i32 3
  %90 = load %struct.hwi_controller*, %struct.hwi_controller** %89, align 8
  %91 = bitcast %struct.hwi_controller* %90 to %struct.mem_array*
  %92 = call i32 @kfree(%struct.mem_array* %91)
  %93 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %94 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %93, i32 0, i32 1
  %95 = load %struct.mem_array*, %struct.mem_array** %94, align 8
  %96 = call i32 @kfree(%struct.mem_array* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %332

99:                                               ; preds = %76
  %100 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %101 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %100, i32 0, i32 2
  %102 = load %struct.mem_array*, %struct.mem_array** %101, align 8
  %103 = bitcast %struct.mem_array* %102 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %103, %struct.be_mem_descriptor** %6, align 8
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %235, %99
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SE_MEM_MAX, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %238

108:                                              ; preds = %104
  %109 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %110 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %108
  %118 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %119 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %118, i32 0, i32 4
  store %struct.be_mem_descriptor* null, %struct.be_mem_descriptor** %119, align 8
  %120 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %121 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %120, i32 1
  store %struct.be_mem_descriptor* %121, %struct.be_mem_descriptor** %6, align 8
  br label %235

122:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  %123 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  store %struct.mem_array* %123, %struct.mem_array** %7, align 8
  %124 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %125 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %11, align 4
  %131 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %132 = load i32, i32* @BEISCSI_MAX_FRAGS_INIT, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 48, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memset(%struct.mem_array* %131, i32 0, i32 %135)
  %137 = load i32, i32* @be_max_phys_size, align 4
  %138 = mul nsw i32 %137, 1024
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @min(i32 %138, i32 %139)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %195, %122
  %142 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %143 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %142, i32 0, i32 3
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i32 @dma_alloc_coherent(i32* %145, i32 %146, i64* %4, i32 %147)
  %149 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %150 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %152 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %173, label %155

155:                                              ; preds = %141
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @BE_MIN_MEM_SIZE, align 4
  %158 = icmp ule i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %241

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @rounddown_pow_of_two(i32 %162)
  %164 = sub i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @rounddown_pow_of_two(i32 %167)
  store i32 %168, i32* %12, align 4
  br label %172

169:                                              ; preds = %160
  %170 = load i32, i32* %12, align 4
  %171 = udiv i32 %170, 2
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %169, %166
  br label %194

173:                                              ; preds = %141
  %174 = load i64, i64* %4, align 8
  %175 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %176 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i64 %174, i64* %179, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %182 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %11, align 4
  %185 = sub i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* @be_max_phys_size, align 4
  %187 = mul nsw i32 %186, 1024
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @min(i32 %187, i32 %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %10, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %10, align 4
  %192 = load %struct.mem_array*, %struct.mem_array** %7, align 8
  %193 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %192, i32 1
  store %struct.mem_array* %193, %struct.mem_array** %7, align 8
  br label %194

194:                                              ; preds = %173, %172
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %141, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %201 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %203 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %210 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @GFP_KERNEL, align 4
  %213 = call i8* @kmalloc_array(i32 %211, i32 48, i32 %212)
  %214 = bitcast i8* %213 to %struct.be_mem_descriptor*
  %215 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %216 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %215, i32 0, i32 4
  store %struct.be_mem_descriptor* %214, %struct.be_mem_descriptor** %216, align 8
  %217 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %218 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %217, i32 0, i32 4
  %219 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %218, align 8
  %220 = icmp ne %struct.be_mem_descriptor* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %198
  br label %241

222:                                              ; preds = %198
  %223 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %224 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %223, i32 0, i32 4
  %225 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %224, align 8
  %226 = bitcast %struct.be_mem_descriptor* %225 to %struct.mem_array*
  %227 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = mul i64 48, %229
  %231 = trunc i64 %230 to i32
  %232 = call i32 @memcpy(%struct.mem_array* %226, %struct.mem_array* %227, i32 %231)
  %233 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %234 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %233, i32 1
  store %struct.be_mem_descriptor* %234, %struct.be_mem_descriptor** %6, align 8
  br label %235

235:                                              ; preds = %222, %117
  %236 = load i32, i32* %9, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %104

238:                                              ; preds = %104
  %239 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %240 = call i32 @kfree(%struct.mem_array* %239)
  store i32 0, i32* %2, align 4
  br label %332

241:                                              ; preds = %221, %159
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %244 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  br label %245

245:                                              ; preds = %312, %241
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br label %251

251:                                              ; preds = %248, %245
  %252 = phi i1 [ true, %245 ], [ %250, %248 ]
  br i1 %252, label %253, label %313

253:                                              ; preds = %251
  %254 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %255 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %296, %253
  %258 = load i32, i32* %10, align 4
  %259 = icmp ugt i32 %258, 0
  br i1 %259, label %260, label %299

260:                                              ; preds = %257
  %261 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %262 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %261, i32 0, i32 3
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %266 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %265, i32 0, i32 4
  %267 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %266, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sub i32 %268, 1
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %267, i64 %270
  %272 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %275 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %274, i32 0, i32 4
  %276 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sub i32 %277, 1
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %276, i64 %279
  %281 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %284 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %283, i32 0, i32 4
  %285 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = sub i32 %286, 1
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %285, i64 %288
  %290 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @dma_free_coherent(i32* %264, i32 %273, i32 %282, i64 %294)
  br label %296

296:                                              ; preds = %260
  %297 = load i32, i32* %10, align 4
  %298 = add i32 %297, -1
  store i32 %298, i32* %10, align 4
  br label %257

299:                                              ; preds = %257
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %299
  %303 = load i32, i32* %9, align 4
  %304 = add i32 %303, -1
  store i32 %304, i32* %9, align 4
  %305 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %306 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %305, i32 0, i32 4
  %307 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %306, align 8
  %308 = bitcast %struct.be_mem_descriptor* %307 to %struct.mem_array*
  %309 = call i32 @kfree(%struct.mem_array* %308)
  %310 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %6, align 8
  %311 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %310, i32 -1
  store %struct.be_mem_descriptor* %311, %struct.be_mem_descriptor** %6, align 8
  br label %312

312:                                              ; preds = %302, %299
  br label %245

313:                                              ; preds = %251
  %314 = load %struct.mem_array*, %struct.mem_array** %8, align 8
  %315 = call i32 @kfree(%struct.mem_array* %314)
  %316 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %317 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %316, i32 0, i32 2
  %318 = load %struct.mem_array*, %struct.mem_array** %317, align 8
  %319 = call i32 @kfree(%struct.mem_array* %318)
  %320 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %321 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %320, i32 0, i32 1
  %322 = load %struct.mem_array*, %struct.mem_array** %321, align 8
  %323 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %322, i32 0, i32 3
  %324 = load %struct.mem_array*, %struct.mem_array** %323, align 8
  %325 = call i32 @kfree(%struct.mem_array* %324)
  %326 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %327 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %326, i32 0, i32 1
  %328 = load %struct.mem_array*, %struct.mem_array** %327, align 8
  %329 = call i32 @kfree(%struct.mem_array* %328)
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %313, %238, %83, %64, %46, %25
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local %struct.mem_array* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mem_array*) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.mem_array*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @memcpy(%struct.mem_array*, %struct.mem_array*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
