; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck12_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck12_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp8788_buck = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@LP8788_VOUT_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp8788_buck12_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_buck12_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp8788_buck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.lp8788_buck* %10, %struct.lp8788_buck** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %14 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @lp8788_set_dvs(%struct.lp8788_buck* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @lp8788_select_buck_vout_addr(%struct.lp8788_buck* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @lp8788_is_valid_buck_addr(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %33 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @LP8788_VOUT_M, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @lp8788_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @lp8788_set_dvs(%struct.lp8788_buck*, i32) #1

declare dso_local i32 @lp8788_select_buck_vout_addr(%struct.lp8788_buck*, i32) #1

declare dso_local i32 @lp8788_is_valid_buck_addr(i32) #1

declare dso_local i32 @lp8788_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
