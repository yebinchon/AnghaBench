; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.clk*, i64)* }

@clock_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp ne %struct.clk* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.clk*, i64)*, i64 (%struct.clk*, i64)** %20, align 8
  %22 = icmp ne i64 (%struct.clk*, i64)* %21, null
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @clock_lock, i64 %29)
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.clk*, i64)*, i64 (%struct.clk*, i64)** %34, align 8
  %36 = load %struct.clk*, %struct.clk** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 %35(%struct.clk* %36, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @clock_lock, i64 %39)
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %3, align 8
  br label %45

42:                                               ; preds = %23
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = call i64 @clk_get_rate(%struct.clk* %43)
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %42, %28, %10
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
