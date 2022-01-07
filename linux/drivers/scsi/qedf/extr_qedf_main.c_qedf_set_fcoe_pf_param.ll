; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_set_fcoe_pf_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_set_fcoe_pf_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Number of CQs is %d.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"dma_alloc_coherent failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Global queue allocation failed.\0A\00", align 1
@SQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@QEDF_PAGE_SIZE = common dso_local global i32 0, align 4
@FCOE_PARAMS_CQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@QEDF_MAX_SESSIONS = common dso_local global i32 0, align 4
@FCOE_PARAMS_NUM_TASKS = common dso_local global i32 0, align 4
@QEDF_FCOE_PARAMS_GL_RQ_PI = common dso_local global i32 0, align 4
@QEDF_FCOE_PARAMS_GL_CMD_PI = common dso_local global i32 0, align 4
@QEDF_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"bdq_list=%p bdq_pbl_list_dma=%llx bdq_pbl_list_entries=%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cq_num_entries=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_set_fcoe_pf_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_set_fcoe_pf_param(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  %9 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %10 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedf_ctx* %9)
  %11 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* @QEDF_LOG_DISC, align 4
  %16 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %14, i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %20, i32 0, i32 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %30, i32 0, i32 6
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @dma_alloc_coherent(i32* %23, i32 %29, i64* %31, i32 %32)
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %1
  %41 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %41, i32 0, i32 2
  %43 = call i32 @QEDF_ERR(i32* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %189

44:                                               ; preds = %1
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %46 = call i32 @qedf_alloc_global_queues(%struct.qedf_ctx* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 2
  %52 = call i32 @QEDF_ERR(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %189

53:                                               ; preds = %44
  %54 = load i32, i32* @SQ_NUM_ENTRIES, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %60 = call i32 @ALIGN(i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @FCOE_PARAMS_CQ_NUM_ENTRIES, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %70 = call i32 @ALIGN(i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %75, i32 0, i32 1
  %77 = call i32 @memset(%struct.TYPE_6__* %76, i32 0, i32 72)
  %78 = load i32, i32* @QEDF_MAX_SESSIONS, align 4
  %79 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 13
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @FCOE_PARAMS_NUM_TASKS, align 4
  %84 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 12
  store i32 %83, i32* %87, align 8
  %88 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 11
  store i64 %90, i64* %94, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 10
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 8
  %116 = load i32, i32* @QEDF_PAGE_SIZE, align 4
  %117 = call i32 @ilog2(i32 %116)
  %118 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %119 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 9
  store i32 %117, i32* %121, align 4
  %122 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i32 9000, i32* %125, align 4
  %126 = load i32, i32* @QEDF_FCOE_PARAMS_GL_RQ_PI, align 4
  %127 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 8
  store i32 %126, i32* %130, align 8
  %131 = load i32, i32* @QEDF_FCOE_PARAMS_GL_CMD_PI, align 4
  %132 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 7
  store i32 %131, i32* %135, align 4
  %136 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %137 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %140 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %138, i32* %144, align 4
  %145 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %149 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* @QEDF_BDQ_BUF_SIZE, align 4
  %155 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %156 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 6
  store i32 %154, i32* %158, align 8
  %159 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %159, i32 0, i32 2
  %161 = load i32, i32* @QEDF_LOG_DISC, align 4
  %162 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %166 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %173 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %160, i32 %161, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %171, i32 %178)
  %180 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %181 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %180, i32 0, i32 2
  %182 = load i32, i32* @QEDF_LOG_DISC, align 4
  %183 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %184 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %181, i32 %182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %53, %49, %40
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedf_ctx*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @qedf_alloc_global_queues(%struct.qedf_ctx*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
