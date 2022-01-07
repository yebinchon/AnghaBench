; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed.c_reg_clock_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed.c_reg_clock_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.fixed_voltage_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @reg_clock_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_clock_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.fixed_voltage_data*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.fixed_voltage_data* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.fixed_voltage_data* %7, %struct.fixed_voltage_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %4, align 8
  %9 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %4, align 8
  %18 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.fixed_voltage_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
