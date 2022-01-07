; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c___gb_power_supply_property_strval_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c___gb_power_supply_property_strval_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32, i32 }
%union.power_supply_propval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*, i32, %union.power_supply_propval*)* @__gb_power_supply_property_strval_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gb_power_supply_property_strval_get(%struct.gb_power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.gb_power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %26 [
    i32 129, label %8
    i32 130, label %14
    i32 128, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %13 = bitcast %union.power_supply_propval* %12 to i32*
  store i32 %11, i32* %13, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %16 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %19 = bitcast %union.power_supply_propval* %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %22 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %20, %14, %8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
