; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc_slow.c_ucc_slow_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc_slow.c_ucc_slow_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_slow_private = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucc_slow_free(%struct.ucc_slow_private* %0) #0 {
  %2 = alloca %struct.ucc_slow_private*, align 8
  store %struct.ucc_slow_private* %0, %struct.ucc_slow_private** %2, align 8
  %3 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %4 = icmp ne %struct.ucc_slow_private* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %49

6:                                                ; preds = %1
  %7 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %8 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %13 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @qe_muram_free(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %18 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %23 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @qe_muram_free(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %28 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %33 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @qe_muram_free(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %38 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %43 = getelementptr inbounds %struct.ucc_slow_private, %struct.ucc_slow_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @iounmap(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.ucc_slow_private*, %struct.ucc_slow_private** %2, align 8
  %48 = call i32 @kfree(%struct.ucc_slow_private* %47)
  br label %49

49:                                               ; preds = %46, %5
  ret void
}

declare dso_local i32 @qe_muram_free(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.ucc_slow_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
