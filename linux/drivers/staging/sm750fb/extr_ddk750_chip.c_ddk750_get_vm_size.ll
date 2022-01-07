; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_ddk750_get_vm_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_ddk750_get_vm_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM750LE = common dso_local global i64 0, align 8
@SZ_64M = common dso_local global i32 0, align 4
@MODE0_GATE = common dso_local global i32 0, align 4
@MODE0_GATE_GPIO = common dso_local global i32 0, align 4
@MISC_CTRL = common dso_local global i32 0, align 4
@MISC_CTRL_LOCALMEM_SIZE_MASK = common dso_local global i32 0, align 4
@SZ_8M = common dso_local global i32 0, align 4
@SZ_16M = common dso_local global i32 0, align 4
@SZ_32M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddk750_get_vm_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @sm750_get_chip_type()
  %5 = load i64, i64* @SM750LE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @SZ_64M, align 4
  store i32 %8, i32* %1, align 4
  br label %34

9:                                                ; preds = %0
  %10 = load i32, i32* @MODE0_GATE, align 4
  %11 = call i32 @peek32(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @MODE0_GATE_GPIO, align 4
  %13 = load i32, i32* %2, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @MODE0_GATE, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @poke32(i32 %15, i32 %16)
  %18 = load i32, i32* @MISC_CTRL, align 4
  %19 = call i32 @peek32(i32 %18)
  %20 = load i32, i32* @MISC_CTRL_LOCALMEM_SIZE_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  switch i32 %22, label %31 [
    i32 128, label %23
    i32 131, label %25
    i32 130, label %27
    i32 129, label %29
  ]

23:                                               ; preds = %9
  %24 = load i32, i32* @SZ_8M, align 4
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %9
  %26 = load i32, i32* @SZ_16M, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %9
  %28 = load i32, i32* @SZ_32M, align 4
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %9
  %30 = load i32, i32* @SZ_64M, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %27, %25, %23
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %7
  %35 = load i32, i32* %1, align 4
  ret i32 %35
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
