; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_charger_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_charger_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { i32, i32, i32, i32, i32, i32, i32 }

@DA9030_CHARGE_CONTROL = common dso_local global i32 0, align 4
@DA9030_CHRG_CHARGER_ENABLE = common dso_local global i32 0, align 4
@DA9030_FAULT_LOG = common dso_local global i32 0, align 4
@DA9030_STATUS_CHDET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*)* @da9030_charger_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_charger_update_state(%struct.da9030_charger* %0) #0 {
  %2 = alloca %struct.da9030_charger*, align 8
  %3 = alloca i32, align 4
  store %struct.da9030_charger* %0, %struct.da9030_charger** %2, align 8
  %4 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %5 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DA9030_CHARGE_CONTROL, align 4
  %8 = call i32 @da903x_read(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DA9030_CHRG_CHARGER_ENABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %16 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 3
  %19 = and i32 %18, 15
  %20 = mul nsw i32 %19, 100
  %21 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %22 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 7
  %25 = mul nsw i32 %24, 50
  %26 = add nsw i32 %25, 4000
  %27 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %28 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %30 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %31 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %30, i32 0, i32 6
  %32 = call i32 @da9030_read_adc(%struct.da9030_charger* %29, i32* %31)
  %33 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %34 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DA9030_FAULT_LOG, align 4
  %37 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %38 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %37, i32 0, i32 3
  %39 = call i32 @da903x_read(i32 %35, i32 %36, i32* %38)
  %40 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %41 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DA9030_STATUS_CHDET, align 4
  %44 = call i32 @da903x_query_status(i32 %42, i32 %43)
  %45 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %46 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @da903x_read(i32, i32, i32*) #1

declare dso_local i32 @da9030_read_adc(%struct.da9030_charger*, i32*) #1

declare dso_local i32 @da903x_query_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
