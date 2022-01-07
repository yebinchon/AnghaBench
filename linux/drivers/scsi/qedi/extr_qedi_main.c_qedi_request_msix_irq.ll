; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_request_msix_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_request_msix_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32)* }
%struct.qedi_ctx = type { %struct.TYPE_11__, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@qedi_ops = common dso_local global %struct.TYPE_12__* null, align 8
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dev_info: num_hwfns=%d affin_hwfn_idx=%d.\0A\00", align 1
@qedi_msix_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"qedi\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"request_irq failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_request_msix_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_request_msix_irq(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %8 = load i32, i32* @cpu_online_mask, align 4
  %9 = call i32 @cpumask_first(i32 %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %97, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %13 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %16, %21
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qedi_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64 (i32)*, i64 (i32)** %27, align 8
  %29 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 %28(i32 %31)
  %33 = add i64 %23, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* @QEDI_LOG_INFO, align 4
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qedi_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64 (i32)*, i64 (i32)** %45, align 8
  %47 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 %46(i32 %49)
  %51 = call i32 @QEDI_INFO(i32* %35, i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %50)
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @qedi_msix_handler, align 4
  %61 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @request_irq(i32 %59, i32 %60, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %15
  %71 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %71, i32 0, i32 1
  %73 = call i32 @QEDI_WARN(i32* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %75 = call i32 @qedi_sync_free_irqs(%struct.qedi_ctx* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %101

77:                                               ; preds = %15
  %78 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @get_cpu_mask(i32 %91)
  %93 = call i32 @irq_set_affinity_hint(i32 %90, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @cpu_online_mask, align 4
  %96 = call i32 @cpumask_next(i32 %94, i32 %95)
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %77
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %10

100:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*) #1

declare dso_local i32 @qedi_sync_free_irqs(%struct.qedi_ctx*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
