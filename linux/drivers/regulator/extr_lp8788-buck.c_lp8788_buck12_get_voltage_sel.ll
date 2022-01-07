; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck12_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck12_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp8788_buck = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LP8788_VOUT_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lp8788_buck12_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_buck12_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.lp8788_buck*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.lp8788_buck* %10, %struct.lp8788_buck** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lp8788_select_buck_vout_addr(%struct.lp8788_buck* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @lp8788_is_valid_buck_addr(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %24 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @lp8788_read_byte(i32 %25, i32 %26, i32* %7)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LP8788_VOUT_M, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %30, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @lp8788_select_buck_vout_addr(%struct.lp8788_buck*, i32) #1

declare dso_local i32 @lp8788_is_valid_buck_addr(i32) #1

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
