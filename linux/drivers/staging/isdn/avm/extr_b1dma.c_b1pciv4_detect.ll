; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1dma.c_b1pciv4_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1dma.c_b1pciv4_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b1pciv4_detect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @b1dma_detect(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @WriteReg(i32* %16, i32 -2136997888, i32 33)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 6, i32* %2, align 4
  br label %50

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ReadReg(i32* %21, i32 -2136997888)
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 7, i32* %2, align 4
  br label %50

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @WriteReg(i32* %35, i32 -2136997888, i32 32)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 8, i32* %2, align 4
  br label %50

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ReadReg(i32* %40, i32 -2136997888)
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 9, i32* %2, align 4
  br label %50

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44, %38, %25, %19, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @b1dma_detect(i32*) #1

declare dso_local i64 @WriteReg(i32*, i32, i32) #1

declare dso_local i32 @ReadReg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
