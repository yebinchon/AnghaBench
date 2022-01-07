; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_set_memory_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_set_memory_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM750LE = common dso_local global i64 0, align 8
@CURRENT_GATE = common dso_local global i32 0, align 4
@CURRENT_GATE_M2XCLK_MASK = common dso_local global i32 0, align 4
@CURRENT_GATE_M2XCLK_DIV_1 = common dso_local global i32 0, align 4
@CURRENT_GATE_M2XCLK_DIV_2 = common dso_local global i32 0, align 4
@CURRENT_GATE_M2XCLK_DIV_3 = common dso_local global i32 0, align 4
@CURRENT_GATE_M2XCLK_DIV_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_memory_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_memory_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @sm750_get_chip_type()
  %6 = load i64, i64* @SM750LE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @MHz(i32 336)
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @MHz(i32 336)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = call i32 (...) @get_mxclk_freq()
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @DIV_ROUND_CLOSEST(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @CURRENT_GATE, align 4
  %23 = call i32 @peek32(i32 %22)
  %24 = load i32, i32* @CURRENT_GATE_M2XCLK_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %28 [
    i32 1, label %29
    i32 2, label %33
    i32 3, label %37
    i32 4, label %41
  ]

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %18, %28
  %30 = load i32, i32* @CURRENT_GATE_M2XCLK_DIV_1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %18
  %34 = load i32, i32* @CURRENT_GATE_M2XCLK_DIV_2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %18
  %38 = load i32, i32* @CURRENT_GATE_M2XCLK_DIV_3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %18
  %42 = load i32, i32* @CURRENT_GATE_M2XCLK_DIV_4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37, %33, %29
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @sm750_set_current_gate(i32 %46)
  br label %48

48:                                               ; preds = %8, %45, %9
  ret void
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @MHz(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @get_mxclk_freq(...) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @sm750_set_current_gate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
