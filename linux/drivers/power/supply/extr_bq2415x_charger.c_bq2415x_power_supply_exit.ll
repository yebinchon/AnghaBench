; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_power_supply_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_power_supply_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i64, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq2415x_device*)* @bq2415x_power_supply_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq2415x_power_supply_exit(%struct.bq2415x_device* %0) #0 {
  %2 = alloca %struct.bq2415x_device*, align 8
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %2, align 8
  %3 = load %struct.bq2415x_device*, %struct.bq2415x_device** %2, align 8
  %4 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %3, i32 0, i32 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.bq2415x_device*, %struct.bq2415x_device** %2, align 8
  %6 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.bq2415x_device*, %struct.bq2415x_device** %2, align 8
  %11 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.bq2415x_device*, %struct.bq2415x_device** %2, align 8
  %14 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %13, i32 0, i32 3
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.bq2415x_device*, %struct.bq2415x_device** %2, align 8
  %17 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @power_supply_unregister(i32 %18)
  %20 = load %struct.bq2415x_device*, %struct.bq2415x_device** %2, align 8
  %21 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kfree(i32 %22)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
