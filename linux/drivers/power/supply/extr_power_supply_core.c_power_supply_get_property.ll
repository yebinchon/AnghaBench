; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* }
%union.power_supply_propval = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %8 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %9 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %8, i32 0, i32 2
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %12
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %27, align 8
  %29 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = call i32 %28(%struct.power_supply* %29, i32 %30, %union.power_supply_propval* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %23, %20, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
