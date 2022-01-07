; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_dpll_from_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_dpll_from_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Unknown Refclk freq (0x%04x), using 26000KHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_dpll_from_clk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 13000, label %5
    i32 16000, label %6
    i32 16800, label %7
    i32 19200, label %8
    i32 24000, label %9
    i32 26000, label %10
    i32 33600, label %11
    i32 38400, label %12
    i32 40000, label %13
    i32 48000, label %14
    i32 52000, label %15
  ]

5:                                                ; preds = %1
  store i32 495571521, i32* %2, align 4
  br label %19

6:                                                ; preds = %1
  store i32 481, i32* %2, align 4
  br label %19

7:                                                ; preds = %1
  store i32 306786753, i32* %2, align 4
  br label %19

8:                                                ; preds = %1
  store i32 401, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  store i32 321, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  store i32 247787809, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  store i32 153391329, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  store i32 268439745, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  store i32 193, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  store i32 161, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  store i32 123891857, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 247787809, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
