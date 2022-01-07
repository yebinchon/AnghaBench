; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_power.c_sm750_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_power.c_sm750_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWER_MODE_CTRL = common dso_local global i32 0, align 4
@POWER_MODE_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@SM750LE = common dso_local global i64 0, align 8
@POWER_MODE_CTRL_OSC_INPUT = common dso_local global i32 0, align 4
@POWER_MODE_CTRL_336CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_set_power_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @POWER_MODE_CTRL, align 4
  %5 = call i32 @peek32(i32 %4)
  %6 = load i32, i32* @POWER_MODE_CTRL_MODE_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = call i64 (...) @sm750_get_chip_type()
  %10 = load i64, i64* @SM750LE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 130
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 129
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, 128
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %21, %18, %15
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @POWER_MODE_CTRL_OSC_INPUT, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @POWER_MODE_CTRL_OSC_INPUT, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @POWER_MODE_CTRL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @poke32(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %12
  ret void
}

declare dso_local i32 @peek32(i32) #1

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
