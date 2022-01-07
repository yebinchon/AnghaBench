; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_sync_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_sync_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.qedi_ctx = type { i32, %struct.TYPE_10__, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@qedi_ops = common dso_local global %struct.TYPE_12__* null, align 8
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Freeing IRQ #%d vector_idx=%d.\0A\00", align 1
@QEDI_SIMD_HANDLER_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*)* @qedi_sync_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_sync_free_irqs(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.qedi_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %2, align 8
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %76, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qedi_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64 (i32)*, i64 (i32)** %30, align 8
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 %31(i32 %34)
  %36 = add i64 %26, %35
  store i64 %36, i64* %4, align 8
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 3
  %39 = load i32, i32* @QEDI_LOG_INFO, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @QEDI_INFO(i32* %38, i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @synchronize_irq(i32 %50)
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @irq_set_affinity_hint(i32 %59, i32* null)
  %61 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %70 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @free_irq(i32 %68, i32* %74)
  br label %76

76:                                               ; preds = %18
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %11

79:                                               ; preds = %11
  br label %91

80:                                               ; preds = %1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qedi_ops, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @QEDI_SIMD_HANDLER_NUM, align 4
  %90 = call i32 %85(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %79
  %92 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qedi_ops, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32 (i32, i32)*, i32 (i32, i32)** %98, align 8
  %100 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %99(i32 %102, i32 0)
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
