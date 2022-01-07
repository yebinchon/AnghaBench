; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c__gb_power_supply_property_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c__gb_power_supply_property_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"get property %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*, i32, %union.power_supply_propval*)* @_gb_power_supply_property_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gb_power_supply_property_get(%struct.gb_power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.gb_power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %10 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %9)
  store %struct.gb_connection* %10, %struct.gb_connection** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @is_prop_valint(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = call i32 @__gb_power_supply_property_get(%struct.gb_power_supply* %15, i32 %16, %union.power_supply_propval* %17)
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = call i32 @__gb_power_supply_property_strval_get(%struct.gb_power_supply* %20, i32 %21, %union.power_supply_propval* %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %29 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  ret i32 0
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local i64 @is_prop_valint(i32) #1

declare dso_local i32 @__gb_power_supply_property_get(%struct.gb_power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @__gb_power_supply_property_strval_get(%struct.gb_power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
