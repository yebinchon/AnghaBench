; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.lpfc_dma_pool }
%struct.lpfc_dma_pool = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lpfc_dma_pool*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 2
  store %struct.lpfc_dma_pool* %11, %struct.lpfc_dma_pool** %7, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @dma_pool_alloc(i32 %14, i32 %15, i32* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %58, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MEM_PRI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %7, align 8
  %31 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %9, align 8
  %48 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %7, align 8
  %49 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %7, align 8
  %52 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %34, %29, %24, %3
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i8*, i8** %9, align 8
  ret i8* %63
}

declare dso_local i8* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
