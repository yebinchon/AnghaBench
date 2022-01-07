; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_buck_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_buck_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp872x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lp872x_dvs* }
%struct.lp872x_dvs = type { i32, i32 }

@LP872X_VOUT_M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp872x_buck_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_buck_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp872x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lp872x_dvs*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.lp872x* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.lp872x* %12, %struct.lp872x** %6, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @LP872X_VOUT_M, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.lp872x*, %struct.lp872x** %6, align 8
  %17 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.lp872x*, %struct.lp872x** %6, align 8
  %22 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %24, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi %struct.lp872x_dvs* [ %25, %20 ], [ null, %26 ]
  store %struct.lp872x_dvs* %28, %struct.lp872x_dvs** %10, align 8
  %29 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %10, align 8
  %30 = icmp ne %struct.lp872x_dvs* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %10, align 8
  %33 = getelementptr inbounds %struct.lp872x_dvs, %struct.lp872x_dvs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @gpio_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.lp872x*, %struct.lp872x** %6, align 8
  %39 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %10, align 8
  %40 = getelementptr inbounds %struct.lp872x_dvs, %struct.lp872x_dvs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %10, align 8
  %43 = getelementptr inbounds %struct.lp872x_dvs, %struct.lp872x_dvs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lp872x_set_dvs(%struct.lp872x* %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %31, %27
  %47 = load %struct.lp872x*, %struct.lp872x** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @lp872x_select_buck_vout_addr(%struct.lp872x* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @lp872x_is_valid_buck_addr(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.lp872x*, %struct.lp872x** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @lp872x_update_bits(%struct.lp872x* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.lp872x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @lp872x_set_dvs(%struct.lp872x*, i32, i32) #1

declare dso_local i32 @lp872x_select_buck_vout_addr(%struct.lp872x*, i32) #1

declare dso_local i32 @lp872x_is_valid_buck_addr(i32) #1

declare dso_local i32 @lp872x_update_bits(%struct.lp872x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
