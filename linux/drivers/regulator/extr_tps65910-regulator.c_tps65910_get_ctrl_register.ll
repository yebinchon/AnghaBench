; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_get_ctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_get_ctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TPS65910_VRTC = common dso_local global i32 0, align 4
@TPS65910_VIO = common dso_local global i32 0, align 4
@TPS65910_VDD1 = common dso_local global i32 0, align 4
@TPS65910_VDD2 = common dso_local global i32 0, align 4
@TPS65910_VDD3 = common dso_local global i32 0, align 4
@TPS65910_VDIG1 = common dso_local global i32 0, align 4
@TPS65910_VDIG2 = common dso_local global i32 0, align 4
@TPS65910_VPLL = common dso_local global i32 0, align 4
@TPS65910_VDAC = common dso_local global i32 0, align 4
@TPS65910_VAUX1 = common dso_local global i32 0, align 4
@TPS65910_VAUX2 = common dso_local global i32 0, align 4
@TPS65910_VAUX33 = common dso_local global i32 0, align 4
@TPS65910_VMMC = common dso_local global i32 0, align 4
@TPS65910_BBCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tps65910_get_ctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_get_ctrl_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %33 [
    i32 128, label %5
    i32 131, label %7
    i32 136, label %9
    i32 135, label %11
    i32 134, label %13
    i32 133, label %15
    i32 132, label %17
    i32 129, label %19
    i32 137, label %21
    i32 141, label %23
    i32 140, label %25
    i32 139, label %27
    i32 130, label %29
    i32 138, label %31
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TPS65910_VRTC, align 4
  store i32 %6, i32* %2, align 4
  br label %36

7:                                                ; preds = %1
  %8 = load i32, i32* @TPS65910_VIO, align 4
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @TPS65910_VDD1, align 4
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* @TPS65910_VDD2, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @TPS65910_VDD3, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* @TPS65910_VDIG1, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load i32, i32* @TPS65910_VDIG2, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @TPS65910_VPLL, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @TPS65910_VDAC, align 4
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @TPS65910_VAUX1, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load i32, i32* @TPS65910_VAUX2, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @TPS65910_VAUX33, align 4
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* @TPS65910_VMMC, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @TPS65910_BBCH, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
