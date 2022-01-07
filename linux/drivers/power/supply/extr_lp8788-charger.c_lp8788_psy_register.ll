; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_psy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_psy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lp8788_charger = type { i8*, i8* }
%struct.power_supply_config = type { i32, i32, i32 }

@lp8788_charger_sysfs_groups = common dso_local global i32 0, align 4
@battery_supplied_to = common dso_local global i32 0, align 4
@lp8788_psy_charger_desc = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@lp8788_psy_battery_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lp8788_charger*)* @lp8788_psy_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_psy_register(%struct.platform_device* %0, %struct.lp8788_charger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.lp8788_charger*, align 8
  %6 = alloca %struct.power_supply_config, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.lp8788_charger* %1, %struct.lp8788_charger** %5, align 8
  %7 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load i32, i32* @lp8788_charger_sysfs_groups, align 4
  %9 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @battery_supplied_to, align 4
  %11 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @battery_supplied_to, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i8* @power_supply_register(i32* %16, i32* @lp8788_psy_charger_desc, %struct.power_supply_config* %6)
  %18 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %19 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %21 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i8* @power_supply_register(i32* %30, i32* @lp8788_psy_battery_desc, %struct.power_supply_config* null)
  %32 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %33 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %35 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %41 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @power_supply_unregister(i8* %42)
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i8* @power_supply_register(i32*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
