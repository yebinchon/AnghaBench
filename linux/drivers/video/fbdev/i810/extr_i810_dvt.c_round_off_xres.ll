; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_round_off_xres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_round_off_xres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @round_off_xres(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 640
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  store i32 640, i32* %7, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 800
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  store i32 800, i32* %13, align 4
  br label %37

14:                                               ; preds = %8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 1024
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  store i32 1024, i32* %19, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 1152
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  store i32 1152, i32* %25, align 4
  br label %35

26:                                               ; preds = %20
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 1280
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  store i32 1280, i32* %31, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32*, i32** %2, align 8
  store i32 1600, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %12
  br label %38

38:                                               ; preds = %37, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
