; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_read_chgend_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_read_chgend_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_battery = type { i64, i32 }

@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA9052_ICHG_END_REG = common dso_local global i32 0, align 4
@DA9052_ICHGEND_ICHGEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_battery*, i32*)* @da9052_read_chgend_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_read_chgend_current(%struct.da9052_battery* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_battery*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.da9052_battery* %0, %struct.da9052_battery** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %8 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %17 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DA9052_ICHG_END_REG, align 4
  %20 = call i32 @da9052_reg_read(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DA9052_ICHGEND_ICHGEND, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @ichg_reg_to_mA(i32 %28)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %23, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @da9052_reg_read(i32, i32) #1

declare dso_local i32 @ichg_reg_to_mA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
