; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_irq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_irq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq25890_device = type { i32 }
%struct.gpio_desc = type { i32 }

@BQ25890_IRQ_PIN = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not probe irq pin.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq25890_device*)* @bq25890_irq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq25890_irq_probe(%struct.bq25890_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq25890_device*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  store %struct.bq25890_device* %0, %struct.bq25890_device** %3, align 8
  %5 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %6 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BQ25890_IRQ_PIN, align 4
  %9 = load i32, i32* @GPIOD_IN, align 4
  %10 = call %struct.gpio_desc* @devm_gpiod_get(i32 %7, i32 %8, i32 %9)
  store %struct.gpio_desc* %10, %struct.gpio_desc** %4, align 8
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %12 = call i64 @IS_ERR(%struct.gpio_desc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %16 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.gpio_desc* %19)
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %23 = call i32 @gpiod_to_irq(%struct.gpio_desc* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
