; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_set_input_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_set_input_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i32, i64 }
%union.power_supply_propval = type { i32 }

@F_IILIMIT = common dso_local global i32 0, align 4
@bq24257_iilimit_map = common dso_local global i32 0, align 4
@BQ24257_IILIMIT_MAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24257_device*, %union.power_supply_propval*)* @bq24257_set_input_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_set_input_current_limit(%struct.bq24257_device* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.bq24257_device*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.bq24257_device* %0, %struct.bq24257_device** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %6 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %11 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %10, i32 0, i32 0
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %15 = load i32, i32* @F_IILIMIT, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @bq24257_iilimit_map, align 4
  %20 = load i32, i32* @BQ24257_IILIMIT_MAP_SIZE, align 4
  %21 = call i32 @bq24257_find_idx(i32 %18, i32 %19, i32 %20)
  %22 = call i32 @bq24257_field_write(%struct.bq24257_device* %14, i32 %15, i32 %21)
  ret i32 %22
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @bq24257_field_write(%struct.bq24257_device*, i32, i32) #1

declare dso_local i32 @bq24257_find_idx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
