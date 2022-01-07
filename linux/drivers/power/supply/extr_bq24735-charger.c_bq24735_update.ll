; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24735 = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq24735*)* @bq24735_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq24735_update(%struct.bq24735* %0) #0 {
  %2 = alloca %struct.bq24735*, align 8
  store %struct.bq24735* %0, %struct.bq24735** %2, align 8
  %3 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %4 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %7 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %12 = call i64 @bq24735_charger_is_present(%struct.bq24735* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %16 = call i32 @bq24735_enable_charging(%struct.bq24735* %15)
  br label %20

17:                                               ; preds = %10, %1
  %18 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %19 = call i32 @bq24735_disable_charging(%struct.bq24735* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %22 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.bq24735*, %struct.bq24735** %2, align 8
  %25 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @power_supply_changed(i32 %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bq24735_charger_is_present(%struct.bq24735*) #1

declare dso_local i32 @bq24735_enable_charging(%struct.bq24735*) #1

declare dso_local i32 @bq24735_disable_charging(%struct.bq24735*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
