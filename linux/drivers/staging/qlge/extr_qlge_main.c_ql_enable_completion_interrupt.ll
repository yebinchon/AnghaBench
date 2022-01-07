; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_enable_completion_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_enable_completion_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, %struct.intr_context* }
%struct.intr_context = type { i32, i32 }

@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@INTR_EN = common dso_local global i32 0, align 4
@STS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_enable_completion_interrupt(%struct.ql_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.intr_context*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 2
  %11 = load %struct.intr_context*, %struct.intr_context** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %11, i64 %13
  store %struct.intr_context* %14, %struct.intr_context** %8, align 8
  %15 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i1 [ false, %2 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %30 = load i32, i32* @INTR_EN, align 4
  %31 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %32 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ql_write32(%struct.ql_adapter* %29, i32 %30, i32 %33)
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %36 = load i32, i32* @STS, align 4
  %37 = call i32 @ql_read32(%struct.ql_adapter* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %64

39:                                               ; preds = %23
  %40 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %45 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %44, i32 0, i32 1
  %46 = call i64 @atomic_dec_and_test(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %50 = load i32, i32* @INTR_EN, align 4
  %51 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %52 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ql_write32(%struct.ql_adapter* %49, i32 %50, i32 %53)
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %56 = load i32, i32* @STS, align 4
  %57 = call i32 @ql_read32(%struct.ql_adapter* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %48, %39
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %28
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
