; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64 }
%struct.smb347_charger = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @smb347_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.smb347_charger*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.smb347_charger* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.smb347_charger* %5, %struct.smb347_charger** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %12 = call i32 @smb347_irq_disable(%struct.smb347_charger* %11)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %17 = call i32 @free_irq(i64 %15, %struct.smb347_charger* %16)
  %18 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %19 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gpio_free(i32 %22)
  br label %24

24:                                               ; preds = %10, %1
  %25 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %26 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @power_supply_unregister(i32 %27)
  %29 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %30 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %37 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @power_supply_unregister(i32 %38)
  br label %40

40:                                               ; preds = %35, %24
  %41 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %42 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %49 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @power_supply_unregister(i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  ret i32 0
}

declare dso_local %struct.smb347_charger* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @smb347_irq_disable(%struct.smb347_charger*) #1

declare dso_local i32 @free_irq(i64, %struct.smb347_charger*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @power_supply_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
