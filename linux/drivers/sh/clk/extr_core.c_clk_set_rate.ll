; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64 (%struct.clk*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@clock_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = icmp ne %struct.clk* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @clock_lock, i64 %14)
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.clk*, i64)**
  %26 = load i32 (%struct.clk*, i64)*, i32 (%struct.clk*, i64)** %25, align 8
  %27 = icmp ne i32 (%struct.clk*, i64)* %26, null
  br label %28

28:                                               ; preds = %20, %13
  %29 = phi i1 [ false, %13 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.clk*, %struct.clk** %4, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.clk*, i64)**
  %39 = load i32 (%struct.clk*, i64)*, i32 (%struct.clk*, i64)** %38, align 8
  %40 = load %struct.clk*, %struct.clk** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 %39(%struct.clk* %40, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %76

46:                                               ; preds = %33
  br label %51

47:                                               ; preds = %28
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = getelementptr inbounds %struct.clk, %struct.clk* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load %struct.clk*, %struct.clk** %4, align 8
  %53 = getelementptr inbounds %struct.clk, %struct.clk* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.clk*, %struct.clk** %4, align 8
  %58 = getelementptr inbounds %struct.clk, %struct.clk* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %60, align 8
  %62 = icmp ne i64 (%struct.clk*)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.clk*, %struct.clk** %4, align 8
  %65 = getelementptr inbounds %struct.clk, %struct.clk* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %67, align 8
  %69 = load %struct.clk*, %struct.clk** %4, align 8
  %70 = call i64 %68(%struct.clk* %69)
  %71 = load %struct.clk*, %struct.clk** %4, align 8
  %72 = getelementptr inbounds %struct.clk, %struct.clk* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %56, %51
  %74 = load %struct.clk*, %struct.clk** %4, align 8
  %75 = call i32 @propagate_rate(%struct.clk* %74)
  br label %76

76:                                               ; preds = %73, %45
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @clock_lock, i64 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @propagate_rate(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
