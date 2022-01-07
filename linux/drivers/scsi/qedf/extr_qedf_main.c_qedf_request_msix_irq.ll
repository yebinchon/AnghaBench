; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_request_msix_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_request_msix_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32)* }
%struct.qedf_ctx = type { i32, %struct.TYPE_11__, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@qed_ops = common dso_local global %struct.TYPE_12__* null, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Requesting IRQ #%d vector_idx=%d.\0A\00", align 1
@qedf_msix_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"qedf\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"request_irq failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_request_msix_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_request_msix_irq(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* @cpu_online_mask, align 4
  %10 = call i32 @cpumask_first(i32 %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %81, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %18, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64 (i32)*, i64 (i32)** %29, align 8
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i64 %30(i32 %33)
  %35 = add i64 %25, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* @QEDF_LOG_DISC, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @QEDF_INFO(i32* %37, i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40)
  %42 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @qedf_msix_handler, align 4
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @request_irq(i32 %50, i32 %51, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %17
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 2
  %64 = call i32 @QEDF_WARN(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %66 = call i32 @qedf_sync_free_irqs(%struct.qedf_ctx* %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %85

68:                                               ; preds = %17
  %69 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @get_cpu_mask(i32 %75)
  %77 = call i32 @irq_set_affinity_hint(i32 %74, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @cpu_online_mask, align 4
  %80 = call i32 @cpumask_next(i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %11

84:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*) #1

declare dso_local i32 @qedf_sync_free_irqs(%struct.qedf_ctx*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
