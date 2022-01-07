; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_global_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_global_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_4__**, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i8*, i64, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"No MSI-X vectors available!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unable to allocate global queues array ptr memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDI_LOG_DISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"qedi->global_queues=%p.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to allocation global queue %d.\0A\00", align 1
@QEDI_CQ_SIZE = common dso_local global i32 0, align 4
@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Could not allocate cq.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not allocate cq PBL.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_alloc_global_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_global_queues(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %16, i32 0, i32 3
  %18 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %375

19:                                               ; preds = %1
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %371

25:                                               ; preds = %19
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_4__**
  %35 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %35, i32 0, i32 1
  store %struct.TYPE_4__** %34, %struct.TYPE_4__*** %36, align 8
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = icmp ne %struct.TYPE_4__** %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %25
  %42 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %42, i32 0, i32 3
  %44 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %375

47:                                               ; preds = %25
  %48 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* @QEDI_LOG_DISC, align 4
  %51 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = call i32 @QEDI_INFO(i32* %49, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__** %53)
  %55 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %56 = call i32 @qedi_alloc_bdq(%struct.qedi_ctx* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %371

60:                                               ; preds = %47
  %61 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %62 = call i32 @qedi_alloc_nvm_iscsi_cfg(%struct.qedi_ctx* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %371

66:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %319, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %322

73:                                               ; preds = %67
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kzalloc(i32 40, i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_4__*
  %77 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %81
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %82, align 8
  %83 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %73
  %92 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %92, i32 0, i32 3
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %371

96:                                               ; preds = %73
  %97 = load i32, i32* @QEDI_CQ_SIZE, align 4
  %98 = add nsw i32 %97, 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %101, i32* %109, align 8
  %110 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %111 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %112, i64 %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %120 = sub nsw i32 %119, 1
  %121 = add nsw i32 %118, %120
  %122 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %121, i32* %129, align 8
  %130 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %131 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %132, i64 %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %140 = sdiv i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %145 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i32 %143, i32* %151, align 4
  %152 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %153 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %154, i64 %156
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %162 = sub nsw i32 %161, 1
  %163 = add nsw i32 %160, %162
  %164 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %165 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %166, i64 %168
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %163, i32* %171, align 4
  %172 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %173 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %172, i32 0, i32 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %178, i64 %180
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %186 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %187, i64 %189
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call i8* @dma_alloc_coherent(i32* %175, i32 %184, i64* %192, i32 %193)
  %195 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %196 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %195, i32 0, i32 1
  %197 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %197, i64 %199
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 5
  store i8* %194, i8** %202, align 8
  %203 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %203, i32 0, i32 1
  %205 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %205, i64 %207
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 5
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %219, label %213

213:                                              ; preds = %96
  %214 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %215 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %214, i32 0, i32 3
  %216 = call i32 @QEDI_WARN(i32* %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %6, align 4
  br label %371

219:                                              ; preds = %96
  %220 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %221 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %220, i32 0, i32 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %225 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %224, i32 0, i32 1
  %226 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %226, i64 %228
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %234 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %235, i64 %237
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = load i32, i32* @GFP_KERNEL, align 4
  %242 = call i8* @dma_alloc_coherent(i32* %223, i32 %232, i64* %240, i32 %241)
  %243 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %244 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %243, i32 0, i32 1
  %245 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %245, i64 %247
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 3
  store i8* %242, i8** %250, align 8
  %251 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %252 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %251, i32 0, i32 1
  %253 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %253, i64 %255
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %267, label %261

261:                                              ; preds = %219
  %262 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %263 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %262, i32 0, i32 3
  %264 = call i32 @QEDI_WARN(i32* %263, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %6, align 4
  br label %371

267:                                              ; preds = %219
  %268 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %269 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %268, i32 0, i32 1
  %270 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %270, i64 %272
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %278 = sdiv i32 %276, %277
  store i32 %278, i32* %10, align 4
  %279 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %280 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %279, i32 0, i32 1
  %281 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %280, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %281, i64 %283
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %9, align 8
  %288 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %289 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %288, i32 0, i32 1
  %290 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %289, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %290, i64 %292
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = bitcast i8* %296 to i64*
  store i64* %297, i64** %8, align 8
  br label %298

298:                                              ; preds = %302, %267
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %10, align 4
  %301 = icmp ne i32 %299, 0
  br i1 %301, label %302, label %318

302:                                              ; preds = %298
  %303 = load i64, i64* %9, align 8
  %304 = load i64*, i64** %8, align 8
  store i64 %303, i64* %304, align 8
  %305 = load i64*, i64** %8, align 8
  %306 = getelementptr inbounds i64, i64* %305, i32 1
  store i64* %306, i64** %8, align 8
  %307 = load i64, i64* %9, align 8
  %308 = trunc i64 %307 to i32
  %309 = ashr i32 %308, 32
  %310 = sext i32 %309 to i64
  %311 = load i64*, i64** %8, align 8
  store i64 %310, i64* %311, align 8
  %312 = load i64*, i64** %8, align 8
  %313 = getelementptr inbounds i64, i64* %312, i32 1
  store i64* %313, i64** %8, align 8
  %314 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %315 = sext i32 %314 to i64
  %316 = load i64, i64* %9, align 8
  %317 = add nsw i64 %316, %315
  store i64 %317, i64* %9, align 8
  br label %298

318:                                              ; preds = %298
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %5, align 4
  br label %67

322:                                              ; preds = %67
  %323 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %324 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to i64*
  store i64* %326, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %327

327:                                              ; preds = %367, %322
  %328 = load i32, i32* %5, align 4
  %329 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %330 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %328, %331
  br i1 %332, label %333, label %370

333:                                              ; preds = %327
  %334 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %335 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %334, i32 0, i32 1
  %336 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %335, align 8
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %336, i64 %338
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load i64*, i64** %4, align 8
  store i64 %342, i64* %343, align 8
  %344 = load i64*, i64** %4, align 8
  %345 = getelementptr inbounds i64, i64* %344, i32 1
  store i64* %345, i64** %4, align 8
  %346 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %347 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %346, i32 0, i32 1
  %348 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %347, align 8
  %349 = load i32, i32* %5, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %348, i64 %350
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = trunc i64 %354 to i32
  %356 = ashr i32 %355, 32
  %357 = sext i32 %356 to i64
  %358 = load i64*, i64** %4, align 8
  store i64 %357, i64* %358, align 8
  %359 = load i64*, i64** %4, align 8
  %360 = getelementptr inbounds i64, i64* %359, i32 1
  store i64* %360, i64** %4, align 8
  %361 = load i64*, i64** %4, align 8
  store i64 0, i64* %361, align 8
  %362 = load i64*, i64** %4, align 8
  %363 = getelementptr inbounds i64, i64* %362, i32 1
  store i64* %363, i64** %4, align 8
  %364 = load i64*, i64** %4, align 8
  store i64 0, i64* %364, align 8
  %365 = load i64*, i64** %4, align 8
  %366 = getelementptr inbounds i64, i64* %365, i32 1
  store i64* %366, i64** %4, align 8
  br label %367

367:                                              ; preds = %333
  %368 = load i32, i32* %5, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %5, align 4
  br label %327

370:                                              ; preds = %327
  store i32 0, i32* %2, align 4
  br label %375

371:                                              ; preds = %261, %213, %91, %65, %59, %24
  %372 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %373 = call i32 @qedi_free_global_queues(%struct.qedi_ctx* %372)
  %374 = load i32, i32* %6, align 4
  store i32 %374, i32* %2, align 4
  br label %375

375:                                              ; preds = %371, %370, %41, %15
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local i32 @QEDI_ERR(i32*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @qedi_alloc_bdq(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_alloc_nvm_iscsi_cfg(%struct.qedi_ctx*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*) #1

declare dso_local i32 @qedi_free_global_queues(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
