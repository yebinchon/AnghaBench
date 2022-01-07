; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_isadma.c_comedi_isadma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_isadma.c_comedi_isadma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_isadma = type { i32, i64, i64, %struct.comedi_isadma*, i32, i64, i32, i32 }
%struct.comedi_isadma_desc = type { i32, i64, i64, %struct.comedi_isadma_desc*, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_isadma_free(%struct.comedi_isadma* %0) #0 {
  %2 = alloca %struct.comedi_isadma*, align 8
  %3 = alloca %struct.comedi_isadma_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_isadma* %0, %struct.comedi_isadma** %2, align 8
  %5 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %6 = icmp ne %struct.comedi_isadma* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %88

8:                                                ; preds = %1
  %9 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %9, i32 0, i32 3
  %11 = load %struct.comedi_isadma*, %struct.comedi_isadma** %10, align 8
  %12 = icmp ne %struct.comedi_isadma* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %22 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %21, i32 0, i32 3
  %23 = load %struct.comedi_isadma*, %struct.comedi_isadma** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %23, i64 %25
  %27 = bitcast %struct.comedi_isadma* %26 to %struct.comedi_isadma_desc*
  store %struct.comedi_isadma_desc* %27, %struct.comedi_isadma_desc** %3, align 8
  %28 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %3, align 8
  %29 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %20
  %33 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %34 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32 %35, i32 %38, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %32, %20
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %52 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %51, i32 0, i32 3
  %53 = load %struct.comedi_isadma*, %struct.comedi_isadma** %52, align 8
  %54 = bitcast %struct.comedi_isadma* %53 to %struct.comedi_isadma_desc*
  %55 = call i32 @kfree(%struct.comedi_isadma_desc* %54)
  br label %56

56:                                               ; preds = %50, %8
  %57 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %58 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %63 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %66 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %71 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @free_dma(i64 %72)
  br label %74

74:                                               ; preds = %69, %61, %56
  %75 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %76 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %81 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @free_dma(i64 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.comedi_isadma*, %struct.comedi_isadma** %2, align 8
  %86 = bitcast %struct.comedi_isadma* %85 to %struct.comedi_isadma_desc*
  %87 = call i32 @kfree(%struct.comedi_isadma_desc* %86)
  br label %88

88:                                               ; preds = %84, %7
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.comedi_isadma_desc*) #1

declare dso_local i32 @free_dma(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
