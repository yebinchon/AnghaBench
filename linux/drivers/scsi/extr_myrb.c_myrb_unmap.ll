; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@MYRB_MAX_LDEVS = common dso_local global i32 0, align 4
@MYRB_MAX_CHANNELS = common dso_local global i32 0, align 4
@MYRB_MAX_TARGETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*)* @myrb_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_unmap(%struct.myrb_hba* %0) #0 {
  %2 = alloca %struct.myrb_hba*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %2, align 8
  %5 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %6 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %5, i32 0, i32 11
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @MYRB_MAX_LDEVS, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  store i64 %12, i64* %3, align 8
  %13 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %14 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %20 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %23 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dma_free_coherent(i32* %16, i32 %18, i32* %21, i32 %24)
  %26 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %27 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %26, i32 0, i32 11
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %9, %1
  %29 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %30 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load i32, i32* @MYRB_MAX_CHANNELS, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = load i32, i32* @MYRB_MAX_TARGETS, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %4, align 8
  %40 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %41 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %47 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %50 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_coherent(i32* %43, i32 %45, i32* %48, i32 %51)
  %53 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %54 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %53, i32 0, i32 9
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %33, %28
  %56 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %57 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %62 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %66 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %69 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dma_free_coherent(i32* %64, i32 4, i32* %67, i32 %70)
  %72 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %73 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %72, i32 0, i32 7
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %60, %55
  %75 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %76 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %81 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %85 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %88 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %91 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dma_free_coherent(i32* %83, i32 %86, i32* %89, i32 %92)
  %94 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %95 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %94, i32 0, i32 5
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %79, %74
  %97 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %98 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %103 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %107 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %110 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %113 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dma_free_coherent(i32* %105, i32 %108, i32* %111, i32 %114)
  %116 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %117 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %116, i32 0, i32 2
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %101, %96
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
