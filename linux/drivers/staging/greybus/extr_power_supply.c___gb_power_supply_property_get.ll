; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c___gb_power_supply_property_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c___gb_power_supply_property_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.gb_power_supply_prop = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*, i32, %union.power_supply_propval*)* @__gb_power_supply_property_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gb_power_supply_property_get(%struct.gb_power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.gb_power_supply_prop*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply* %9, i32 %10)
  store %struct.gb_power_supply_prop* %11, %struct.gb_power_supply_prop** %8, align 8
  %12 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %8, align 8
  %13 = icmp ne %struct.gb_power_supply_prop* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %8, align 8
  %19 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
