; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_battery = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DA9052_IRQ_CHGEND = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@DA9052_IRQ_DCIN = common dso_local global i32 0, align 4
@DA9052_IRQ_VBUS = common dso_local global i32 0, align 4
@DA9052_IRQ_TBAT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9052_bat_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_bat_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da9052_battery*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.da9052_battery*
  store %struct.da9052_battery* %8, %struct.da9052_battery** %5, align 8
  %9 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %10 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @regmap_irq_get_virq(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DA9052_IRQ_CHGEND, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %24 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %25 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %28 = call i32 @da9052_bat_check_status(%struct.da9052_battery* %27, i32* null)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DA9052_IRQ_CHGEND, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DA9052_IRQ_DCIN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @DA9052_IRQ_VBUS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @DA9052_IRQ_TBAT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %37, %33, %29
  %46 = load %struct.da9052_battery*, %struct.da9052_battery** %5, align 8
  %47 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @power_supply_changed(i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @da9052_bat_check_status(%struct.da9052_battery*, i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
