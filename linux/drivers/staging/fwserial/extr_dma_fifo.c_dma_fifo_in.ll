; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_dma_fifo.c_dma_fifo_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_dma_fifo.c_dma_fifo_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fifo = type { i32, i32, i32, i32, i32, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fifo corrupt: in:%u out:%u done:%u n:%d avail:%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"in:%u out:%u done:%u n:%d avail:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_fifo_in(%struct.dma_fifo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_fifo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_fifo* %0, %struct.dma_fifo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %11 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %141

17:                                               ; preds = %3
  %18 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %19 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %141

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %28 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %33 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %141

39:                                               ; preds = %35
  %40 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %41 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %44 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = srem i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %49 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @min(i32 %47, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %55 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i64 %59, i8* %60, i32 %61)
  %63 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %64 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @memcpy(i64 %65, i8* %69, i32 %72)
  %74 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %75 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %76 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %79 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %82 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i64 @addr_check(i32 %77, i32 %80, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %39
  %89 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %90 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br label %94

94:                                               ; preds = %88, %39
  %95 = phi i1 [ true, %39 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %98 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %101 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %104 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %108 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @FAIL(%struct.dma_fifo* %74, i32 %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102, i32 %105, i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %94
  %113 = load i32, i32* @ENXIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %141

115:                                              ; preds = %94
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %118 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %123 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %127 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %130 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %133 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.dma_fifo*, %struct.dma_fifo** %5, align 8
  %137 = getelementptr inbounds %struct.dma_fifo, %struct.dma_fifo* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @df_trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i32 %135, i32 %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %115, %112, %38, %22, %14
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @FAIL(%struct.dma_fifo*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @addr_check(i32, i32, i32) #1

declare dso_local i32 @df_trace(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
