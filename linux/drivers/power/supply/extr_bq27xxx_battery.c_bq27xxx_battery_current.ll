; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32 }
%union.power_supply_propval = type { i32 }

@BQ27XXX_REG_AI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error reading current\0A\00", align 1
@BQ27XXX_O_ZERO = common dso_local global i32 0, align 4
@BQ27XXX_REG_FLAGS = common dso_local global i32 0, align 4
@BQ27000_FLAG_CHGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"negative current!\0A\00", align 1
@BQ27XXX_CURRENT_CONSTANT = common dso_local global i32 0, align 4
@BQ27XXX_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, %union.power_supply_propval*)* @bq27xxx_battery_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_current(%struct.bq27xxx_device_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq27xxx_device_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %8 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %9 = load i32, i32* @BQ27XXX_REG_AI, align 4
  %10 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %8, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %21 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BQ27XXX_O_ZERO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %28 = load i32, i32* @BQ27XXX_REG_FLAGS, align 4
  %29 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %27, i32 %28, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BQ27000_FLAG_CHGS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %36 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BQ27XXX_CURRENT_CONSTANT, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @BQ27XXX_RS, align 4
  %46 = sdiv i32 %44, %45
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %56

49:                                               ; preds = %19
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = trunc i64 %51 to i32
  %53 = mul nsw i32 %52, 1000
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %41
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
