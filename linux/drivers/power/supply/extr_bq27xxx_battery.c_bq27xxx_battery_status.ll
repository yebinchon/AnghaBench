; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }

@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27000_FLAG_FC = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@BQ27000_FLAG_CHGS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@BQ27XXX_FLAG_FC = common dso_local global i32 0, align 4
@BQ27XXX_FLAG_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, %union.power_supply_propval*)* @bq27xxx_battery_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_status(%struct.bq27xxx_device_info* %0, %union.power_supply_propval* %1) #0 {
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
  br i1 %11, label %12, label %45

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
  %21 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %12
  %23 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BQ27000_FLAG_CHGS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %34 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @power_supply_am_i_supplied(i32 %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %20
  br label %69

45:                                               ; preds = %2
  %46 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %47 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BQ27XXX_FLAG_FC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %54, i32* %5, align 4
  br label %68

55:                                               ; preds = %45
  %56 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %57 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BQ27XXX_FLAG_DSC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %5, align 4
  %71 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %72 = bitcast %union.power_supply_propval* %71 to i32*
  store i32 %70, i32* %72, align 4
  ret i32 0
}

declare dso_local i64 @power_supply_am_i_supplied(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
