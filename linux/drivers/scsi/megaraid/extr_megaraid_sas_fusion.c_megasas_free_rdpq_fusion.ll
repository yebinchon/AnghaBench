; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_free_rdpq_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_free_rdpq_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_4__*, %struct.fusion_context* }
%struct.TYPE_4__ = type { i32 }
%struct.fusion_context = type { i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }

@RDPQ_MAX_CHUNK_COUNT = common dso_local global i32 0, align 4
@MAX_MSIX_QUEUES_FUSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_free_rdpq_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_free_rdpq_fusion(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %6 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %5, i32 0, i32 1
  %7 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  store %struct.fusion_context* %7, %struct.fusion_context** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RDPQ_MAX_CHUNK_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %14 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %12
  %23 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %24 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %32 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %40 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_pool_free(i32 %30, i64 %38, i32 %46)
  br label %48

48:                                               ; preds = %22, %12
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %8

52:                                               ; preds = %8
  %53 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %54 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dma_pool_destroy(i32 %55)
  %57 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %58 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_pool_destroy(i32 %59)
  %61 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %62 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %52
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %67 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* @MAX_MSIX_QUEUES_FUSION, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %75 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fusion_context*, %struct.fusion_context** %4, align 8
  %78 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dma_free_coherent(i32* %69, i32 %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %65, %52
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
