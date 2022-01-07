; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_power_supply_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_power_supply_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i32, i32 }
%struct.power_supply_config = type { i32, i32, i32, %struct.bq24257_device* }

@bq24257_charger_sysfs_groups = common dso_local global i32 0, align 4
@bq24257_charger_supplied_to = common dso_local global i32 0, align 4
@bq24257_power_supply_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24257_device*)* @bq24257_power_supply_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_power_supply_init(%struct.bq24257_device* %0) #0 {
  %2 = alloca %struct.bq24257_device*, align 8
  %3 = alloca %struct.power_supply_config, align 8
  store %struct.bq24257_device* %0, %struct.bq24257_device** %2, align 8
  %4 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 2
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 3
  %8 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  store %struct.bq24257_device* %8, %struct.bq24257_device** %7, align 8
  %9 = load i32, i32* @bq24257_charger_sysfs_groups, align 4
  %10 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @bq24257_charger_supplied_to, align 4
  %12 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @bq24257_charger_supplied_to, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %17 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @devm_power_supply_register(i32 %18, i32* @bq24257_power_supply_desc, %struct.power_supply_config* %3)
  %20 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %21 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %23 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PTR_ERR_OR_ZERO(i32 %24)
  ret i32 %25
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_power_supply_register(i32, i32*, %struct.power_supply_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
