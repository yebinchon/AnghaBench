; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_power.c_ddk750_set_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_power.c_ddk750_set_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM750LE = common dso_local global i64 0, align 8
@CRT_DISPLAY_CTRL = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_DPMS_MASK = common dso_local global i32 0, align 4
@CRT_DISPLAY_CTRL_DPMS_SHIFT = common dso_local global i32 0, align 4
@SYSTEM_CTRL = common dso_local global i32 0, align 4
@SYSTEM_CTRL_DPMS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddk750_set_dpms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @sm750_get_chip_type()
  %5 = load i64, i64* @SM750LE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %9 = call i32 @peek32(i32 %8)
  %10 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @CRT_DISPLAY_CTRL_DPMS_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @CRT_DISPLAY_CTRL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @poke32(i32 %18, i32 %19)
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* @SYSTEM_CTRL, align 4
  %23 = call i32 @peek32(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYSTEM_CTRL_DPMS_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load i32, i32* %2, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @SYSTEM_CTRL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @poke32(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %7
  ret void
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
