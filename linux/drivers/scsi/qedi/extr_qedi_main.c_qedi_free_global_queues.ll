; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_free_global_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_free_global_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_2__*, %struct.global_queue** }
%struct.TYPE_2__ = type { i32 }
%struct.global_queue = type { i32, i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*)* @qedi_free_global_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_free_global_queues(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.qedi_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.global_queue**, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %2, align 8
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %5, i32 0, i32 2
  %7 = load %struct.global_queue**, %struct.global_queue*** %6, align 8
  store %struct.global_queue** %7, %struct.global_queue*** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %101, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %104

14:                                               ; preds = %8
  %15 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %15, i64 %17
  %19 = load %struct.global_queue*, %struct.global_queue** %18, align 8
  %20 = icmp ne %struct.global_queue* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %101

22:                                               ; preds = %14
  %23 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %23, i64 %25
  %27 = load %struct.global_queue*, %struct.global_queue** %26, align 8
  %28 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %22
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %36, i64 %38
  %40 = load %struct.global_queue*, %struct.global_queue** %39, align 8
  %41 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %43, i64 %45
  %47 = load %struct.global_queue*, %struct.global_queue** %46, align 8
  %48 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %50, i64 %52
  %54 = load %struct.global_queue*, %struct.global_queue** %53, align 8
  %55 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dma_free_coherent(i32* %35, i32 %42, i64 %49, i32 %56)
  br label %58

58:                                               ; preds = %31, %22
  %59 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %59, i64 %61
  %63 = load %struct.global_queue*, %struct.global_queue** %62, align 8
  %64 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %58
  %68 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %72, i64 %74
  %76 = load %struct.global_queue*, %struct.global_queue** %75, align 8
  %77 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %79, i64 %81
  %83 = load %struct.global_queue*, %struct.global_queue** %82, align 8
  %84 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %86, i64 %88
  %90 = load %struct.global_queue*, %struct.global_queue** %89, align 8
  %91 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dma_free_coherent(i32* %71, i32 %78, i64 %85, i32 %92)
  br label %94

94:                                               ; preds = %67, %58
  %95 = load %struct.global_queue**, %struct.global_queue*** %4, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %95, i64 %97
  %99 = load %struct.global_queue*, %struct.global_queue** %98, align 8
  %100 = call i32 @kfree(%struct.global_queue* %99)
  br label %101

101:                                              ; preds = %94, %21
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %8

104:                                              ; preds = %8
  %105 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %106 = call i32 @qedi_free_bdq(%struct.qedi_ctx* %105)
  %107 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %108 = call i32 @qedi_free_nvm_iscsi_cfg(%struct.qedi_ctx* %107)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.global_queue*) #1

declare dso_local i32 @qedi_free_bdq(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_free_nvm_iscsi_cfg(%struct.qedi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
