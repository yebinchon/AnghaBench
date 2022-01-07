; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8994-regulator.c_wm8994_ldo2_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8994-regulator.c_wm8994_ldo2_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8994_ldo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WM8994_LDO2_MAX_SELECTOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm8994_ldo2_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_ldo2_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8994_ldo*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call %struct.wm8994_ldo* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm8994_ldo* %8, %struct.wm8994_ldo** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WM8994_LDO2_MAX_SELECTOR, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.wm8994_ldo*, %struct.wm8994_ldo** %6, align 8
  %17 = getelementptr inbounds %struct.wm8994_ldo, %struct.wm8994_ldo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %38 [
    i32 128, label %21
    i32 129, label %25
    i32 130, label %29
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = mul i32 %22, 100000
  %24 = add i32 %23, 900000
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 %26, 100000
  %28 = add i32 %27, 1000000
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %34 [
    i32 0, label %31
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = mul i32 %35, 100000
  %37 = add i32 %36, 950000
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %15
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %34, %31, %25, %21, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.wm8994_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
