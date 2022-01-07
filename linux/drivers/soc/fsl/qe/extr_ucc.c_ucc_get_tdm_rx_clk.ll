; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc.c_ucc_get_tdm_rx_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc.c_ucc_get_tdm_rx_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ucc_get_tdm_rx_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_get_tdm_rx_clk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %57 [
    i32 0, label %9
    i32 1, label %15
    i32 2, label %21
    i32 3, label %27
    i32 4, label %33
    i32 5, label %39
    i32 6, label %45
    i32 7, label %51
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %13 [
    i32 132, label %11
    i32 129, label %12
  ]

11:                                               ; preds = %9
  store i32 6, i32* %5, align 4
  br label %14

12:                                               ; preds = %9
  store i32 7, i32* %5, align 4
  br label %14

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %12, %11
  br label %57

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %19 [
    i32 131, label %17
    i32 143, label %18
  ]

17:                                               ; preds = %15
  store i32 6, i32* %5, align 4
  br label %20

18:                                               ; preds = %15
  store i32 7, i32* %5, align 4
  br label %20

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %18, %17
  br label %57

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %25 [
    i32 130, label %23
    i32 141, label %24
  ]

23:                                               ; preds = %21
  store i32 6, i32* %5, align 4
  br label %26

24:                                               ; preds = %21
  store i32 7, i32* %5, align 4
  br label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %24, %23
  br label %57

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %31 [
    i32 128, label %29
    i32 139, label %30
  ]

29:                                               ; preds = %27
  store i32 6, i32* %5, align 4
  br label %32

30:                                               ; preds = %27
  store i32 7, i32* %5, align 4
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30, %29
  br label %57

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %37 [
    i32 142, label %35
    i32 137, label %36
  ]

35:                                               ; preds = %33
  store i32 6, i32* %5, align 4
  br label %38

36:                                               ; preds = %33
  store i32 7, i32* %5, align 4
  br label %38

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %36, %35
  br label %57

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %43 [
    i32 140, label %41
    i32 135, label %42
  ]

41:                                               ; preds = %39
  store i32 6, i32* %5, align 4
  br label %44

42:                                               ; preds = %39
  store i32 7, i32* %5, align 4
  br label %44

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %42, %41
  br label %57

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %49 [
    i32 138, label %47
    i32 134, label %48
  ]

47:                                               ; preds = %45
  store i32 6, i32* %5, align 4
  br label %50

48:                                               ; preds = %45
  store i32 7, i32* %5, align 4
  br label %50

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %48, %47
  br label %57

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  switch i32 %52, label %55 [
    i32 136, label %53
    i32 133, label %54
  ]

53:                                               ; preds = %51
  store i32 6, i32* %5, align 4
  br label %56

54:                                               ; preds = %51
  store i32 7, i32* %5, align 4
  br label %56

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %54, %53
  br label %57

57:                                               ; preds = %2, %56, %50, %44, %38, %32, %26, %20, %14
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
