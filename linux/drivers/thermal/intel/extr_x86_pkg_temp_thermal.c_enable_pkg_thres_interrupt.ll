; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_enable_pkg_thres_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_enable_pkg_thres_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@THERM_MASK_THRESHOLD0 = common dso_local global i32 0, align 4
@THERM_SHIFT_THRESHOLD0 = common dso_local global i32 0, align 4
@THERM_MASK_THRESHOLD1 = common dso_local global i32 0, align 4
@THERM_SHIFT_THRESHOLD1 = common dso_local global i32 0, align 4
@THERM_INT_THRESHOLD0_ENABLE = common dso_local global i32 0, align 4
@THERM_INT_THRESHOLD1_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @enable_pkg_thres_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_pkg_thres_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @rdmsr(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @THERM_MASK_THRESHOLD0, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @THERM_SHIFT_THRESHOLD0, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @THERM_MASK_THRESHOLD1, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @THERM_SHIFT_THRESHOLD1, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = load i32, i32* @THERM_INT_THRESHOLD0_ENABLE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %0
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @THERM_INT_THRESHOLD1_ENABLE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @wrmsr(i32 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
