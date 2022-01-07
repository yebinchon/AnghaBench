; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_GetChnlGroup88E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_GetChnlGroup88E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_GetChnlGroup88E(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  br label %39

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %38

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 9
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  store i32 2, i32* %18, align 4
  br label %37

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  store i32 3, i32* %23, align 4
  br label %36

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  store i32 4, i32* %28, align 4
  br label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 14
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32*, i32** %4, align 8
  store i32 5, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %17
  br label %38

38:                                               ; preds = %37, %12
  br label %39

39:                                               ; preds = %38, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
