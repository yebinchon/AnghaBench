; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_supply_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_supply_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_charger = type { %struct.power_supply* }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_charger*, %struct.power_supply*, %union.power_supply_propval*)* @da9150_charger_supply_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_supply_online(%struct.da9150_charger* %0, %struct.power_supply* %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.da9150_charger*, align 8
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca %union.power_supply_propval*, align 8
  store %struct.da9150_charger* %0, %struct.da9150_charger** %4, align 8
  store %struct.power_supply* %1, %struct.power_supply** %5, align 8
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %7 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %8 = load %struct.da9150_charger*, %struct.da9150_charger** %4, align 8
  %9 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %8, i32 0, i32 0
  %10 = load %struct.power_supply*, %struct.power_supply** %9, align 8
  %11 = icmp eq %struct.power_supply* %7, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  store i32 %13, i32* %15, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
