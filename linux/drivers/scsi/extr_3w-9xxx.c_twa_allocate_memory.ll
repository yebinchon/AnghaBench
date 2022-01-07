; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_allocate_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_allocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64**, i32*, i32**, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@TW_Q_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@TW_ALIGNMENT_9000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to allocate correctly aligned memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @twa_allocate_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_allocate_memory(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %10, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TW_Q_LENGTH, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64* @dma_alloc_coherent(i32* %14, i32 %17, i32* %8, i32 %18)
  store i64* %19, i64** %9, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TW_DRIVER, align 4
  %27 = call i32 @TW_PRINTK(i32 %25, i32 %26, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %119

28:                                               ; preds = %3
  %29 = load i64*, i64** %9, align 8
  %30 = ptrtoint i64* %29 to i64
  %31 = load i64, i64* @TW_ALIGNMENT_9000, align 8
  %32 = urem i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TW_DRIVER, align 4
  %39 = call i32 @TW_PRINTK(i32 %37, i32 %38, i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TW_Q_LENGTH, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i64*, i64** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dma_free_coherent(i32* %43, i32 %46, i64* %47, i32 %48)
  br label %119

50:                                               ; preds = %28
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @TW_Q_LENGTH, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @memset(i64* %51, i32 0, i32 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %115, %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TW_Q_LENGTH, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %114 [
    i32 0, label %62
    i32 1, label %88
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i64*, i64** %9, align 8
  %75 = bitcast i64* %74 to i8*
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  store i32* %81, i32** %87, align 8
  br label %114

88:                                               ; preds = %60
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load i64*, i64** %9, align 8
  %101 = bitcast i64* %100 to i8*
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = bitcast i8* %106 to i64*
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64**, i64*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64*, i64** %110, i64 %112
  store i64* %107, i64** %113, align 8
  br label %114

114:                                              ; preds = %60, %88, %62
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %56

118:                                              ; preds = %56
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %118, %34, %22
  %120 = load i32, i32* %10, align 4
  ret i32 %120
}

declare dso_local i64* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
