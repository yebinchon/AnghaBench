; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_capacity_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_capacity_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }

@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27000_FLAG_FC = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@BQ27000_FLAG_EDV1 = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@BQ27000_FLAG_EDVF = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@BQ27XXX_FLAG_FC = common dso_local global i32 0, align 4
@BQ27XXX_FLAG_SOC1 = common dso_local global i32 0, align 4
@BQ27XXX_FLAG_SOCF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, %union.power_supply_propval*)* @bq27xxx_battery_capacity_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_capacity_level(%struct.bq27xxx_device_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.bq27xxx_device_info*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  %5 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %6 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %7 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BQ27XXX_O_ZERO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %14 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BQ27000_FLAG_FC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %12
  %23 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BQ27000_FLAG_EDV1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  store i32 %31, i32* %5, align 4
  br label %45

32:                                               ; preds = %22
  %33 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %34 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BQ27000_FLAG_EDVF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %20
  br label %82

47:                                               ; preds = %2
  %48 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %49 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BQ27XXX_FLAG_FC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  store i32 %56, i32* %5, align 4
  br label %81

57:                                               ; preds = %47
  %58 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %59 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BQ27XXX_FLAG_SOC1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  store i32 %66, i32* %5, align 4
  br label %80

67:                                               ; preds = %57
  %68 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %69 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BQ27XXX_FLAG_SOCF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  store i32 %76, i32* %5, align 4
  br label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %65
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i32, i32* %5, align 4
  %84 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %85 = bitcast %union.power_supply_propval* %84 to i32*
  store i32 %83, i32* %85, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
