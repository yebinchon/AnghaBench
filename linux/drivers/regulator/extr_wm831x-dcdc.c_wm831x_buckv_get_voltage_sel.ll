; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_buckv_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckv_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_dcdc*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %6 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.wm831x_dcdc* %6, %struct.wm831x_dcdc** %4, align 8
  %7 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %8 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %13 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %18 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %11, %1
  %21 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %22 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
