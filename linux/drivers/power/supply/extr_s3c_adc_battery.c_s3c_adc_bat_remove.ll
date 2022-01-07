; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_s3c_adc_battery.c_s3c_adc_bat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_s3c_adc_battery.c_s3c_adc_bat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.s3c_adc_bat_pdata* }
%struct.s3c_adc_bat_pdata = type { i64, i32 (...)*, i64 }
%struct.s3c_adc_client = type { i32 }

@main_bat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@backup_bat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@bat_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_adc_bat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_adc_bat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c_adc_client*, align 8
  %4 = alloca %struct.s3c_adc_bat_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.s3c_adc_client* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.s3c_adc_client* %6, %struct.s3c_adc_client** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %9, align 8
  store %struct.s3c_adc_bat_pdata* %10, %struct.s3c_adc_bat_pdata** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @main_bat, i32 0, i32 0), align 4
  %12 = call i32 @power_supply_unregister(i32 %11)
  %13 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %4, align 8
  %14 = getelementptr inbounds %struct.s3c_adc_bat_pdata, %struct.s3c_adc_bat_pdata* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backup_bat, i32 0, i32 0), align 4
  %19 = call i32 @power_supply_unregister(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.s3c_adc_client*, %struct.s3c_adc_client** %3, align 8
  %22 = call i32 @s3c_adc_release(%struct.s3c_adc_client* %21)
  %23 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %4, align 8
  %24 = getelementptr inbounds %struct.s3c_adc_bat_pdata, %struct.s3c_adc_bat_pdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.s3c_adc_bat_pdata, %struct.s3c_adc_bat_pdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @gpio_to_irq(i64 %30)
  %32 = call i32 @free_irq(i32 %31, i32* null)
  %33 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %4, align 8
  %34 = getelementptr inbounds %struct.s3c_adc_bat_pdata, %struct.s3c_adc_bat_pdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gpio_free(i64 %35)
  br label %37

37:                                               ; preds = %27, %20
  %38 = call i32 @cancel_delayed_work(i32* @bat_work)
  %39 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %4, align 8
  %40 = getelementptr inbounds %struct.s3c_adc_bat_pdata, %struct.s3c_adc_bat_pdata* %39, i32 0, i32 1
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = icmp ne i32 (...)* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.s3c_adc_bat_pdata*, %struct.s3c_adc_bat_pdata** %4, align 8
  %45 = getelementptr inbounds %struct.s3c_adc_bat_pdata, %struct.s3c_adc_bat_pdata* %44, i32 0, i32 1
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  br label %48

48:                                               ; preds = %43, %37
  ret i32 0
}

declare dso_local %struct.s3c_adc_client* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @s3c_adc_release(%struct.s3c_adc_client*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @gpio_to_irq(i64) #1

declare dso_local i32 @gpio_free(i64) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
