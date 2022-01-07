; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.da9052_battery = type { i32, i32 }

@da9052_bat_irqs = common dso_local global i32 0, align 4
@da9052_bat_irq_bits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_bat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_bat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_battery*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.da9052_battery* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.da9052_battery* %6, %struct.da9052_battery** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @da9052_bat_irqs, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %14 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @da9052_bat_irq_bits, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %22 = call i32 @da9052_free_irq(i32 %15, i32 %20, %struct.da9052_battery* %21)
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %28 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @power_supply_unregister(i32 %29)
  ret i32 0
}

declare dso_local %struct.da9052_battery* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @da9052_free_irq(i32, i32, %struct.da9052_battery*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
