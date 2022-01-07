; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_iv = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @airq_iv_free(%struct.airq_iv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.airq_iv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.airq_iv* %0, %struct.airq_iv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %10 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  br label %83

17:                                               ; preds = %13
  %18 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %19 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %41, %17
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %31 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clear_bit_inv(i64 %29, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %38 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_bit_inv(i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %26
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %22

44:                                               ; preds = %22
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %49 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %72, %52
  %54 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %55 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %60 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %65 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @test_bit_inv(i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %58, %53
  %71 = phi i1 [ false, %53 ], [ %69, %58 ]
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %74 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %53

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %80 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %79, i32 0, i32 1
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit_inv(i64, i32) #1

declare dso_local i32 @set_bit_inv(i64, i32) #1

declare dso_local i32 @test_bit_inv(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
