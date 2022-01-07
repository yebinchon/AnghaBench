; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.bq2415x_device = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@bq2415x_id_mutex = common dso_local global i32 0, align 4
@bq2415x_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"driver unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @bq2415x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.bq2415x_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.bq2415x_device* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.bq2415x_device* %5, %struct.bq2415x_device** %3, align 8
  %6 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %13 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %12, i32 0, i32 4
  %14 = call i32 @power_supply_unreg_notifier(%struct.TYPE_2__* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %17 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_node_put(i32 %18)
  %20 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %21 = call i32 @bq2415x_power_supply_exit(%struct.bq2415x_device* %20)
  %22 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %23 = call i32 @bq2415x_reset_chip(%struct.bq2415x_device* %22)
  %24 = call i32 @mutex_lock(i32* @bq2415x_id_mutex)
  %25 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %26 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @idr_remove(i32* @bq2415x_id, i32 %27)
  %29 = call i32 @mutex_unlock(i32* @bq2415x_id_mutex)
  %30 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %31 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %35 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kfree(i32 %36)
  ret i32 0
}

declare dso_local %struct.bq2415x_device* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @power_supply_unreg_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @bq2415x_power_supply_exit(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_reset_chip(%struct.bq2415x_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
