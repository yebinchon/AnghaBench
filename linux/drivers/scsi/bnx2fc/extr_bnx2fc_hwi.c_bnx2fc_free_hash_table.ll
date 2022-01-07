; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_hash_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_hwi.c_bnx2fc_free_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { i32, i32, i32*, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

@BNX2FC_HASH_TBL_CHUNK_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_hba*)* @bnx2fc_free_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_free_hash_table(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  %7 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %7, i32 0, i32 4
  %9 = load i32**, i32*** %8, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %11, label %64

11:                                               ; preds = %1
  %12 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %11
  %18 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %53, %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = shl i32 %33, 32
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %5, align 8
  %39 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @BNX2FC_HASH_TBL_CHUNK_SIZE, align 4
  %44 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %44, i32 0, i32 4
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dma_free_coherent(i32* %42, i32 %43, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %25
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %21

56:                                               ; preds = %21
  br label %57

57:                                               ; preds = %56, %11
  %58 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %58, i32 0, i32 4
  %60 = load i32**, i32*** %59, align 8
  %61 = call i32 @kfree(i32** %60)
  %62 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %63 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %62, i32 0, i32 4
  store i32** null, i32*** %63, align 8
  br label %64

64:                                               ; preds = %57, %1
  %65 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %71 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %79 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dma_free_coherent(i32* %73, i32 %74, i32* %77, i32 %80)
  %82 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
