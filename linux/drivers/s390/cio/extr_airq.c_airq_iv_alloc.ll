; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_iv = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @airq_iv_alloc(%struct.airq_iv* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.airq_iv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.airq_iv* %0, %struct.airq_iv** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %10 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i64 -1, i64* %3, align 8
  br label %119

17:                                               ; preds = %13
  %18 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %19 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %18, i32 0, i32 2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %23 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %26 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @find_first_bit_inv(i32 %24, i64 %27)
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %92, %17
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %34 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ule i64 %32, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %29
  store i64 1, i64* %7, align 8
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  %46 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %47 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @test_bit_inv(i64 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %38

56:                                               ; preds = %51, %38
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %70 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clear_bit_inv(i64 %68, i32 %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %61

76:                                               ; preds = %61
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %77, %78
  %80 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %81 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp uge i64 %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %85, %86
  %88 = add i64 %87, 1
  %89 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %90 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %76
  br label %104

92:                                               ; preds = %56
  %93 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %94 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %97 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %99, %100
  %102 = add i64 %101, 1
  %103 = call i64 @find_next_bit_inv(i32 %95, i64 %98, i64 %102)
  store i64 %103, i64* %6, align 8
  br label %29

104:                                              ; preds = %91, %29
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %5, align 8
  %107 = add i64 %105, %106
  %108 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %109 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i64 -1, i64* %6, align 8
  br label %113

113:                                              ; preds = %112, %104
  %114 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %115 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %114, i32 0, i32 2
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i64, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  br label %119

119:                                              ; preds = %113, %16
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_first_bit_inv(i32, i64) #1

declare dso_local i32 @test_bit_inv(i64, i32) #1

declare dso_local i32 @clear_bit_inv(i64, i32) #1

declare dso_local i64 @find_next_bit_inv(i32, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
