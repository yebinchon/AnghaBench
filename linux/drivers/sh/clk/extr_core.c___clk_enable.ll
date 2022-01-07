; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c___clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/clk/extr_core.c___clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.clk*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @__clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load %struct.clk*, %struct.clk** %12, align 8
  %14 = icmp ne %struct.clk* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = load %struct.clk*, %struct.clk** %17, align 8
  %19 = call i32 @__clk_enable(%struct.clk* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %64

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.clk*)**
  %36 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %35, align 8
  %37 = icmp ne i32 (%struct.clk*)* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = load %struct.clk*, %struct.clk** %3, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.clk*)**
  %44 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %43, align 8
  %45 = load %struct.clk*, %struct.clk** %3, align 8
  %46 = call i32 %44(%struct.clk* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = load %struct.clk*, %struct.clk** %3, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = load %struct.clk*, %struct.clk** %51, align 8
  %53 = icmp ne %struct.clk* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.clk*, %struct.clk** %3, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 1
  %57 = load %struct.clk*, %struct.clk** %56, align 8
  %58 = call i32 @__clk_disable(%struct.clk* %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %64

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %30, %25
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %59, %23
  %65 = load %struct.clk*, %struct.clk** %3, align 8
  %66 = getelementptr inbounds %struct.clk, %struct.clk* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %62
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
