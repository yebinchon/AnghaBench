; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_execute_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_execute_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i64, i64, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.scatterlist = type { i32 }
%struct.rd_dev = type { i32, i32 }
%struct.rd_dev_sg_table = type { i64, i64, %struct.scatterlist* }
%struct.sg_mapping_iter = type { i8*, i64, i64 }

@RDF_NULLIO = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"RD[%u]: %s LBA: %llu, Size: %u Page: %u, Offset: %u\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"RD[%u]: invalid sgl %p len %zu\0A\00", align 1
@TCM_INCORRECT_AMOUNT_OF_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"RD[%u]: size underrun page %d offset %d size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*, %struct.scatterlist*, i64, i32)* @rd_execute_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rd_execute_rw(%struct.se_cmd* %0, %struct.scatterlist* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca %struct.rd_dev*, align 8
  %12 = alloca %struct.rd_dev_sg_table*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.sg_mapping_iter, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 3
  %25 = load %struct.se_device*, %struct.se_device** %24, align 8
  store %struct.se_device* %25, %struct.se_device** %10, align 8
  %26 = load %struct.se_device*, %struct.se_device** %10, align 8
  %27 = call %struct.rd_dev* @RD_DEV(%struct.se_device* %26)
  store %struct.rd_dev* %27, %struct.rd_dev** %11, align 8
  %28 = load %struct.rd_dev*, %struct.rd_dev** %11, align 8
  %29 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RDF_NULLIO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %36 = load i32, i32* @SAM_STAT_GOOD, align 4
  %37 = call i32 @target_complete_cmd(%struct.se_cmd* %35, i32 %36)
  store i64 0, i64* %5, align 8
  br label %252

38:                                               ; preds = %4
  %39 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.se_device*, %struct.se_device** %10, align 8
  %43 = getelementptr inbounds %struct.se_device, %struct.se_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %41, %45
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %19, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = call i64 @do_div(i64 %47, i64 %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %19, align 8
  store i64 %50, i64* %17, align 8
  %51 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %16, align 8
  %54 = load %struct.rd_dev*, %struct.rd_dev** %11, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call %struct.rd_dev_sg_table* @rd_get_sg_table(%struct.rd_dev* %54, i64 %55)
  store %struct.rd_dev_sg_table* %56, %struct.rd_dev_sg_table** %12, align 8
  %57 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %12, align 8
  %58 = icmp ne %struct.rd_dev_sg_table* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %38
  %60 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %60, i64* %5, align 8
  br label %252

61:                                               ; preds = %38
  %62 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %12, align 8
  %63 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %62, i32 0, i32 2
  %64 = load %struct.scatterlist*, %struct.scatterlist** %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %12, align 8
  %67 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %65, %68
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i64 %69
  store %struct.scatterlist* %70, %struct.scatterlist** %13, align 8
  %71 = load %struct.rd_dev*, %struct.rd_dev** %11, align 8
  %72 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %79 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %15, align 8
  %85 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %78, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %87 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %61
  %91 = load %struct.se_device*, %struct.se_device** %10, align 8
  %92 = getelementptr inbounds %struct.se_device, %struct.se_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @DMA_TO_DEVICE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %102 = call i64 @rd_do_prot_rw(%struct.se_cmd* %101, i32 0)
  store i64 %102, i64* %20, align 8
  %103 = load i64, i64* %20, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i64, i64* %20, align 8
  store i64 %106, i64* %5, align 8
  br label %252

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %96, %90, %61
  %109 = load i64, i64* @PAGE_SIZE, align 8
  %110 = load i64, i64* %15, align 8
  %111 = sub i64 %109, %110
  store i64 %111, i64* %18, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @SG_MITER_TO_SG, align 4
  br label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @SG_MITER_FROM_SG, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %14, %struct.scatterlist* %112, i64 %113, i32 %122)
  br label %124

124:                                              ; preds = %220, %208, %195, %188, %121
  %125 = load i64, i64* %16, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %224

127:                                              ; preds = %124
  %128 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %14)
  %129 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %127
  %133 = load %struct.rd_dev*, %struct.rd_dev** %11, align 8
  %134 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %135, i8* %137, i64 %139)
  %141 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %14)
  %142 = load i64, i64* @TCM_INCORRECT_AMOUNT_OF_DATA, align 8
  store i64 %142, i64* %5, align 8
  br label %252

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %18, align 8
  %147 = call i64 @min(i64 %145, i64 %146)
  store i64 %147, i64* %21, align 8
  %148 = load i64, i64* %21, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = load %struct.rd_dev*, %struct.rd_dev** %11, align 8
  %153 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %16, align 8
  %158 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %16, align 8
  store i64 %159, i64* %21, align 8
  br label %160

160:                                              ; preds = %151, %143
  %161 = load i64, i64* %21, align 8
  %162 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %164 = call i8* @sg_virt(%struct.scatterlist* %163)
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr i8, i8* %164, i64 %165
  store i8* %166, i8** %22, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = load i64, i64* %21, align 8
  %175 = call i32 @memcpy(i8* %172, i8* %173, i64 %174)
  br label %182

176:                                              ; preds = %160
  %177 = load i8*, i8** %22, align 8
  %178 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %14, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i64, i64* %21, align 8
  %181 = call i32 @memcpy(i8* %177, i8* %179, i64 %180)
  br label %182

182:                                              ; preds = %176, %170
  %183 = load i64, i64* %21, align 8
  %184 = load i64, i64* %16, align 8
  %185 = sub i64 %184, %183
  store i64 %185, i64* %16, align 8
  %186 = load i64, i64* %16, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %182
  br label %124

189:                                              ; preds = %182
  %190 = load i64, i64* %21, align 8
  %191 = load i64, i64* %18, align 8
  %192 = sub i64 %191, %190
  store i64 %192, i64* %18, align 8
  %193 = load i64, i64* %18, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i64, i64* %21, align 8
  %197 = load i64, i64* %15, align 8
  %198 = add i64 %197, %196
  store i64 %198, i64* %15, align 8
  br label %124

199:                                              ; preds = %189
  %200 = load i64, i64* %17, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %17, align 8
  store i64 0, i64* %15, align 8
  %202 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %202, i64* %18, align 8
  %203 = load i64, i64* %17, align 8
  %204 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %12, align 8
  %205 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ule i64 %203, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %210 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %209, i32 1
  store %struct.scatterlist* %210, %struct.scatterlist** %13, align 8
  br label %124

211:                                              ; preds = %199
  %212 = load %struct.rd_dev*, %struct.rd_dev** %11, align 8
  %213 = load i64, i64* %17, align 8
  %214 = call %struct.rd_dev_sg_table* @rd_get_sg_table(%struct.rd_dev* %212, i64 %213)
  store %struct.rd_dev_sg_table* %214, %struct.rd_dev_sg_table** %12, align 8
  %215 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %12, align 8
  %216 = icmp ne %struct.rd_dev_sg_table* %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %14)
  %219 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %219, i64* %5, align 8
  br label %252

220:                                              ; preds = %211
  %221 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %12, align 8
  %222 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %221, i32 0, i32 2
  %223 = load %struct.scatterlist*, %struct.scatterlist** %222, align 8
  store %struct.scatterlist* %223, %struct.scatterlist** %13, align 8
  br label %124

224:                                              ; preds = %124
  %225 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %14)
  %226 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %227 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %224
  %231 = load %struct.se_device*, %struct.se_device** %10, align 8
  %232 = getelementptr inbounds %struct.se_device, %struct.se_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %230
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %242 = call i64 @rd_do_prot_rw(%struct.se_cmd* %241, i32 1)
  store i64 %242, i64* %20, align 8
  %243 = load i64, i64* %20, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = load i64, i64* %20, align 8
  store i64 %246, i64* %5, align 8
  br label %252

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %236, %230, %224
  %249 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %250 = load i32, i32* @SAM_STAT_GOOD, align 4
  %251 = call i32 @target_complete_cmd(%struct.se_cmd* %249, i32 %250)
  store i64 0, i64* %5, align 8
  br label %252

252:                                              ; preds = %248, %245, %217, %132, %105, %59, %34
  %253 = load i64, i64* %5, align 8
  ret i64 %253
}

declare dso_local %struct.rd_dev* @RD_DEV(%struct.se_device*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local %struct.rd_dev_sg_table* @rd_get_sg_table(%struct.rd_dev*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @rd_do_prot_rw(%struct.se_cmd*, i32) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i64, i32) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
