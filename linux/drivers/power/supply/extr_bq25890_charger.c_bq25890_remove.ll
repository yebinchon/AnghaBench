; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.bq25890_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @bq25890_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq25890_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.bq25890_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.bq25890_device* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.bq25890_device* %5, %struct.bq25890_device** %3, align 8
  %6 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @power_supply_unregister(i32 %8)
  %10 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %11 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_ERR_OR_NULL(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %17 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %20 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %19, i32 0, i32 0
  %21 = call i32 @usb_unregister_notifier(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %24 = call i32 @bq25890_chip_reset(%struct.bq25890_device* %23)
  ret i32 0
}

declare dso_local %struct.bq25890_device* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_unregister_notifier(i32, i32*) #1

declare dso_local i32 @bq25890_chip_reset(%struct.bq25890_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
