; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c___power_supply_changed_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c___power_supply_changed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.power_supply*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__power_supply_changed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__power_supply_changed_work(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca %struct.power_supply*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.power_supply*
  store %struct.power_supply* %8, %struct.power_supply** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %9)
  store %struct.power_supply* %10, %struct.power_supply** %6, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %13 = call i64 @__power_supply_is_supplied_by(%struct.power_supply* %11, %struct.power_supply* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %19, align 8
  %21 = icmp ne i32 (%struct.power_supply*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %24 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %26, align 8
  %28 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %29 = call i32 %27(%struct.power_supply* %28)
  br label %30

30:                                               ; preds = %22, %15
  br label %31

31:                                               ; preds = %30, %2
  ret i32 0
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @__power_supply_is_supplied_by(%struct.power_supply*, %struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
