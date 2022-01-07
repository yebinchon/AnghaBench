; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_set_iscsi_pf_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_set_iscsi_pf_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_5__, i32, i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_OUTSTANDING_TASKS_PER_CON = common dso_local global i32 0, align 4
@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Number of CQ count is %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"dma_alloc_coherent fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Global queue allocation failed.\0A\00", align 1
@QEDI_MAX_ISCSI_CONNS_PER_HBA = common dso_local global i32 0, align 4
@QEDI_MAX_ISCSI_TASK = common dso_local global i32 0, align 4
@qedi_fw_debug = common dso_local global i32 0, align 4
@BDQ_ID_RQ = common dso_local global i64 0, align 8
@QEDI_BDQ_BUF_SIZE = common dso_local global i32 0, align 4
@QEDI_PROTO_CQ_PROD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_set_iscsi_pf_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_set_iscsi_pf_param(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.qedi_ctx*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @MAX_OUTSTANDING_TASKS_PER_CON, align 4
  %7 = mul nsw i32 %6, 8
  %8 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %9 = sdiv i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %3, align 8
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %13 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %12)
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %16, i32 0, i32 5
  %18 = load i32, i32* @QEDI_LOG_INFO, align 4
  %19 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @QEDI_INFO(i32* %17, i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @memset(%struct.TYPE_6__* %25, i32 0, i32 104)
  %27 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %27, i32 0, i32 7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @dma_alloc_coherent(i32* %30, i32 %36, i64* %38, i32 %39)
  %41 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %1
  %48 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %48, i32 0, i32 5
  %50 = call i32 @QEDI_ERR(i32* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

51:                                               ; preds = %1
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %53 = call i32 @qedi_alloc_global_queues(%struct.qedi_ctx* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %57, i32 0, i32 5
  %59 = call i32 @QEDI_ERR(i32* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %178

60:                                               ; preds = %51
  %61 = load i32, i32* @QEDI_MAX_ISCSI_CONNS_PER_HBA, align 4
  %62 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 18
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @QEDI_MAX_ISCSI_TASK, align 4
  %67 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 17
  store i32 %66, i32* %70, align 8
  %71 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 10, i32* %74, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 16
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 15
  store i8* %80, i8** %84, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 14
  store i8* %85, i8** %89, align 8
  %90 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @qedi_fw_debug, align 4
  %98 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %99 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 13
  store i32 %97, i32* %101, align 8
  %102 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 4000, i32* %105, align 8
  %106 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %107 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 2, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %120, %60
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 32
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, i32* %4, align 4
  %115 = shl i32 1, %114
  %116 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %123

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %110

123:                                              ; preds = %118, %110
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %126 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  store i32 %124, i32* %128, align 8
  %129 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %130 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %133 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 12
  store i64 %131, i64* %135, align 8
  %136 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %137 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  store i32 8, i32* %139, align 4
  %140 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %141 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %144 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 11
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @BDQ_ID_RQ, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %142, i32* %149, align 4
  %150 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %151 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %154 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 10
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @BDQ_ID_RQ, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32 %152, i32* %159, align 4
  %160 = load i32, i32* @QEDI_BDQ_BUF_SIZE, align 4
  %161 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %162 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 9
  store i32 %160, i32* %164, align 4
  %165 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %166 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 6
  store i32 2048, i32* %168, align 8
  %169 = load i32, i32* @QEDI_PROTO_CQ_PROD_IDX, align 4
  %170 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %171 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 8
  store i32 %169, i32* %173, align 8
  %174 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %175 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 7
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %123, %56, %47
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @qedi_alloc_global_queues(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
