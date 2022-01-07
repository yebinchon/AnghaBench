; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_check_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_battery = type { i32 }

@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@DA9052_BAT_LOW_CAP = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_battery*, i32*)* @da9052_bat_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_bat_check_health(%struct.da9052_battery* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_battery*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.da9052_battery* %0, %struct.da9052_battery** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %10 = call i32 @da9052_bat_check_presence(%struct.da9052_battery* %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %20 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %21 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %15
  %23 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %24 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %30 = call i32 @da9052_bat_read_capacity(%struct.da9052_battery* %29, i32* %8)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DA9052_BAT_LOW_CAP, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %41 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %42 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %45 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %46 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %50 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %33, %18, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @da9052_bat_check_presence(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @da9052_bat_read_capacity(%struct.da9052_battery*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
