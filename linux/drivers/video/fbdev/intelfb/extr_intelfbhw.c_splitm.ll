; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_splitm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_splitm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_min_max = type { i32, i32, i32, i32 }

@plls = common dso_local global %struct.pll_min_max* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @splitm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitm(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pll_min_max*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.pll_min_max*, %struct.pll_min_max** @plls, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %14, i64 %16
  store %struct.pll_min_max* %17, %struct.pll_min_max** %13, align 8
  %18 = load %struct.pll_min_max*, %struct.pll_min_max** %13, align 8
  %19 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %59, %4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.pll_min_max*, %struct.pll_min_max** %13, align 8
  %24 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %21
  %29 = load %struct.pll_min_max*, %struct.pll_min_max** %13, align 8
  %30 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %55, %28
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.pll_min_max*, %struct.pll_min_max** %13, align 8
  %35 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 2
  %42 = mul nsw i32 5, %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 2
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %63

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %32

58:                                               ; preds = %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %21

62:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
