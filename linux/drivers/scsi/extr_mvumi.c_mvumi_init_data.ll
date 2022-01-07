; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mvumi_ob_data = type { i32 }
%struct.mvumi_res = type { i32, i8* }

@MVUMI_FW_ALLOC = common dso_local global i32 0, align 4
@HS_CAPABILITY_SUPPORT_DYN_SRC = common dso_local global i32 0, align 4
@RESOURCE_UNCACHED_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to allocate memory for inbound list\0A\00", align 1
@PCI_DEVICE_ID_MARVELL_MV9580 = common dso_local global i64 0, align 8
@RESOURCE_CACHED_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to allocate memory for outbound data buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to allocate memory for tag and target map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_init_data(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.mvumi_ob_data*, align 8
  %5 = alloca %struct.mvumi_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %12 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MVUMI_FW_ALLOC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %371

19:                                               ; preds = %1
  %20 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %28 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HS_CAPABILITY_SUPPORT_DYN_SRC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %35 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %33, %19
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %48 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = mul i32 %46, %49
  %51 = add i32 128, %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = add i64 %55, 32
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %59 = load i32, i32* @RESOURCE_UNCACHED_MEMORY, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.mvumi_res* @mvumi_alloc_mem_resource(%struct.mvumi_hba* %58, i32 %59, i32 %60)
  store %struct.mvumi_res* %61, %struct.mvumi_res** %5, align 8
  %62 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %63 = icmp ne %struct.mvumi_res* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %43
  %65 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %66 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %65, i32 0, i32 14
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %368

70:                                               ; preds = %43
  %71 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %72 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %11, align 4
  %74 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %75 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @round_up(i32 %77, i32 128)
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr i8, i8* %85, i64 %86
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %90 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %89, i32 0, i32 20
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %93 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %95 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HS_CAPABILITY_SUPPORT_DYN_SRC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %70
  %101 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %102 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = zext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr i8, i8* %106, i64 %105
  store i8* %107, i8** %10, align 8
  %108 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %109 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = zext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = add i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %11, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %119 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %118, i32 0, i32 19
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %122 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %100, %70
  %124 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %125 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %128 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = mul i32 %126, %129
  %131 = load i8*, i8** %10, align 8
  %132 = zext i32 %130 to i64
  %133 = getelementptr i8, i8* %131, i64 %132
  store i8* %133, i8** %10, align 8
  %134 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %135 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %138 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = mul i32 %136, %139
  %141 = load i32, i32* %11, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @round_up(i32 %143, i32 8)
  %145 = load i32, i32* %11, align 4
  %146 = sub i32 %144, %145
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i8*, i8** %10, align 8
  %152 = zext i32 %150 to i64
  %153 = getelementptr i8, i8* %151, i64 %152
  store i8* %153, i8** %10, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %156 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %155, i32 0, i32 18
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %159 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %11, align 4
  %161 = zext i32 %160 to i64
  %162 = add i64 %161, 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %11, align 4
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr i8, i8* %164, i64 8
  store i8* %165, i8** %10, align 8
  %166 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %167 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %166, i32 0, i32 14
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PCI_DEVICE_ID_MARVELL_MV9580, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %123
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @round_up(i32 %174, i32 8)
  %176 = load i32, i32* %11, align 4
  %177 = sub i32 %175, %176
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %11, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr i8, i8* %182, i64 %183
  store i8* %184, i8** %10, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %187 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %186, i32 0, i32 17
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %190 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %11, align 4
  %192 = add i32 %191, 8
  store i32 %192, i32* %11, align 4
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr i8, i8* %193, i64 8
  store i8* %194, i8** %10, align 8
  br label %217

195:                                              ; preds = %123
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @round_up(i32 %196, i32 4)
  %198 = load i32, i32* %11, align 4
  %199 = sub i32 %197, %198
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i8*, i8** %10, align 8
  %205 = zext i32 %203 to i64
  %206 = getelementptr i8, i8* %204, i64 %205
  store i8* %206, i8** %10, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %209 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %208, i32 0, i32 17
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %212 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %211, i32 0, i32 8
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %11, align 4
  %214 = add i32 %213, 4
  store i32 %214, i32* %11, align 4
  %215 = load i8*, i8** %10, align 8
  %216 = getelementptr i8, i8* %215, i64 4
  store i8* %216, i8** %10, align 8
  br label %217

217:                                              ; preds = %195, %173
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @round_up(i32 %218, i32 128)
  %220 = load i32, i32* %11, align 4
  %221 = sub i32 %219, %220
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add i32 %223, %222
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i8*, i8** %10, align 8
  %227 = zext i32 %225 to i64
  %228 = getelementptr i8, i8* %226, i64 %227
  store i8* %228, i8** %10, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %231 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %230, i32 0, i32 16
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %234 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %233, i32 0, i32 9
  store i32 %232, i32* %234, align 4
  %235 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %236 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = zext i32 %237 to i64
  %239 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %240 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = add i64 %242, 4
  %244 = mul i64 %238, %243
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @round_up(i32 %246, i32 8)
  store i32 %247, i32* %6, align 4
  %248 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %249 = load i32, i32* @RESOURCE_CACHED_MEMORY, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call %struct.mvumi_res* @mvumi_alloc_mem_resource(%struct.mvumi_hba* %248, i32 %249, i32 %250)
  store %struct.mvumi_res* %251, %struct.mvumi_res** %5, align 8
  %252 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %253 = icmp ne %struct.mvumi_res* %252, null
  br i1 %253, label %260, label %254

254:                                              ; preds = %217
  %255 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %256 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %255, i32 0, i32 14
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 1
  %259 = call i32 @dev_err(i32* %258, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %368

260:                                              ; preds = %217
  %261 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %262 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  store i8* %263, i8** %9, align 8
  %264 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %265 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %285, %260
  %268 = load i32, i32* %8, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %288

270:                                              ; preds = %267
  %271 = load i8*, i8** %9, align 8
  %272 = bitcast i8* %271 to %struct.mvumi_ob_data*
  store %struct.mvumi_ob_data* %272, %struct.mvumi_ob_data** %4, align 8
  %273 = load %struct.mvumi_ob_data*, %struct.mvumi_ob_data** %4, align 8
  %274 = getelementptr inbounds %struct.mvumi_ob_data, %struct.mvumi_ob_data* %273, i32 0, i32 0
  %275 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %276 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %275, i32 0, i32 15
  %277 = call i32 @list_add_tail(i32* %274, i32* %276)
  %278 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %279 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = add i64 %281, 4
  %283 = load i8*, i8** %9, align 8
  %284 = getelementptr i8, i8* %283, i64 %282
  store i8* %284, i8** %9, align 8
  br label %285

285:                                              ; preds = %270
  %286 = load i32, i32* %8, align 4
  %287 = add i32 %286, -1
  store i32 %287, i32* %8, align 4
  br label %267

288:                                              ; preds = %267
  %289 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %290 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = zext i32 %291 to i64
  %293 = mul i64 2, %292
  %294 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %295 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = zext i32 %296 to i64
  %298 = mul i64 8, %297
  %299 = add i64 %293, %298
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %6, align 4
  %301 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %302 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %301, i32 0, i32 10
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @round_up(i32 %303, i32 8)
  %305 = sext i32 %304 to i64
  %306 = udiv i64 %305, 8
  %307 = load i32, i32* %6, align 4
  %308 = zext i32 %307 to i64
  %309 = add i64 %308, %306
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %6, align 4
  %311 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %312 = load i32, i32* @RESOURCE_CACHED_MEMORY, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call %struct.mvumi_res* @mvumi_alloc_mem_resource(%struct.mvumi_hba* %311, i32 %312, i32 %313)
  store %struct.mvumi_res* %314, %struct.mvumi_res** %5, align 8
  %315 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %316 = icmp ne %struct.mvumi_res* %315, null
  br i1 %316, label %323, label %317

317:                                              ; preds = %288
  %318 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %319 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %318, i32 0, i32 14
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 1
  %322 = call i32 @dev_err(i32* %321, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %368

323:                                              ; preds = %288
  %324 = load %struct.mvumi_res*, %struct.mvumi_res** %5, align 8
  %325 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %324, i32 0, i32 1
  %326 = load i8*, i8** %325, align 8
  store i8* %326, i8** %9, align 8
  %327 = load i8*, i8** %9, align 8
  %328 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %329 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %328, i32 0, i32 13
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  store i8* %327, i8** %330, align 8
  %331 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %332 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %335 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %334, i32 0, i32 13
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  store i32 %333, i32* %336, align 8
  %337 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %338 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %337, i32 0, i32 13
  %339 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %340 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @tag_init(%struct.TYPE_4__* %338, i32 %341)
  %343 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %344 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = zext i32 %345 to i64
  %347 = mul i64 2, %346
  %348 = load i8*, i8** %9, align 8
  %349 = getelementptr i8, i8* %348, i64 %347
  store i8* %349, i8** %9, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %352 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %351, i32 0, i32 12
  store i8* %350, i8** %352, align 8
  %353 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %354 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = zext i32 %355 to i64
  %357 = mul i64 8, %356
  %358 = load i8*, i8** %9, align 8
  %359 = getelementptr i8, i8* %358, i64 %357
  store i8* %359, i8** %9, align 8
  %360 = load i8*, i8** %9, align 8
  %361 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %362 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %361, i32 0, i32 11
  store i8* %360, i8** %362, align 8
  %363 = load i32, i32* @MVUMI_FW_ALLOC, align 4
  %364 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %365 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  store i32 0, i32* %2, align 4
  br label %371

368:                                              ; preds = %317, %254, %64
  %369 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %370 = call i32 @mvumi_release_mem_resource(%struct.mvumi_hba* %369)
  store i32 -1, i32* %2, align 4
  br label %371

371:                                              ; preds = %368, %323, %18
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.mvumi_res* @mvumi_alloc_mem_resource(%struct.mvumi_hba*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tag_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mvumi_release_mem_resource(%struct.mvumi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
