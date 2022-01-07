; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wilco-charger.c_wilco_charge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wilco-charger.c_wilco_charge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wilco_ec_device = type { i32 }
%struct.power_supply_config = type { %struct.wilco_ec_device* }
%struct.power_supply = type { i32 }

@wilco_ps_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wilco_charge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilco_charge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wilco_ec_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.power_supply*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wilco_ec_device* @dev_get_drvdata(i32 %9)
  store %struct.wilco_ec_device* %10, %struct.wilco_ec_device** %3, align 8
  %11 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %3, align 8
  %13 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store %struct.wilco_ec_device* %12, %struct.wilco_ec_device** %13, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.power_supply* @devm_power_supply_register(%struct.TYPE_2__* %15, i32* @wilco_ps_desc, %struct.power_supply_config* %4)
  store %struct.power_supply* %16, %struct.power_supply** %5, align 8
  %17 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %18 = call i32 @PTR_ERR_OR_ZERO(%struct.power_supply* %17)
  ret i32 %18
}

declare dso_local %struct.wilco_ec_device* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.power_supply* @devm_power_supply_register(%struct.TYPE_2__*, i32*, %struct.power_supply_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
