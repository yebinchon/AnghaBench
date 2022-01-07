; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32 }

@update_interval_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_power_supply*)* @gb_power_supply_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_power_supply_status_update(%struct.gb_power_supply* %0) #0 {
  %2 = alloca %struct.gb_power_supply*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %2, align 8
  %3 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %4 = call i32 @gb_power_supply_status_get(%struct.gb_power_supply* %3)
  %5 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %6 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @update_interval_init, align 4
  %12 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %13 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %15 = call i32 @__gb_power_supply_changed(%struct.gb_power_supply* %14)
  %16 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %17 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @gb_power_supply_status_get(%struct.gb_power_supply*) #1

declare dso_local i32 @__gb_power_supply_changed(%struct.gb_power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
