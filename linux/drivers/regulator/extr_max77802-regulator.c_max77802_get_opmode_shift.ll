; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_get_opmode_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_get_opmode_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX77802_BUCK1 = common dso_local global i32 0, align 4
@MAX77802_BUCK5 = common dso_local global i32 0, align 4
@MAX77802_BUCK10 = common dso_local global i32 0, align 4
@MAX77802_BUCK2 = common dso_local global i32 0, align 4
@MAX77802_BUCK4 = common dso_local global i32 0, align 4
@MAX77802_OPMODE_BUCK234_SHIFT = common dso_local global i32 0, align 4
@MAX77802_LDO1 = common dso_local global i32 0, align 4
@MAX77802_LDO35 = common dso_local global i32 0, align 4
@MAX77802_OPMODE_SHIFT_LDO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @max77802_get_opmode_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_get_opmode_shift(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MAX77802_BUCK1, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX77802_BUCK5, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MAX77802_BUCK10, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %39

16:                                               ; preds = %11, %7
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MAX77802_BUCK2, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MAX77802_BUCK4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @MAX77802_OPMODE_BUCK234_SHIFT, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MAX77802_LDO1, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MAX77802_LDO35, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @MAX77802_OPMODE_SHIFT_LDO, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %30, %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %34, %24, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
