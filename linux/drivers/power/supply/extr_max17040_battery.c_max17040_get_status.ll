; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17040_battery.c_max17040_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17040_battery.c_max17040_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max17040_chip = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (...)*, i64 (...)* }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@MAX17040_BATTERY_FULL = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @max17040_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17040_get_status(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max17040_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.max17040_chip* %5, %struct.max17040_chip** %3, align 8
  %6 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %7 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %12 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64 (...)*, i64 (...)** %14, align 8
  %16 = icmp ne i64 (...)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %19 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (...)*, i64 (...)** %21, align 8
  %23 = icmp ne i64 (...)* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17, %10, %1
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %26 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %27 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %67

28:                                               ; preds = %17
  %29 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %30 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64 (...)*, i64 (...)** %32, align 8
  %34 = call i64 (...) %33()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %38 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64 (...)*, i64 (...)** %40, align 8
  %42 = call i64 (...) %41()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %46 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %47 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %50 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %51 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %57

53:                                               ; preds = %28
  %54 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %55 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %56 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %59 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX17040_BATTERY_FULL, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %65 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %66 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %24, %63, %57
  ret void
}

declare dso_local %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
