; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_vbus_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_vbus_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_charger = type { i32*, i32*, i32*, i32, i32 }

@DA9150_STATUS_H = common dso_local global i32 0, align 4
@DA9150_VBUS_STAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown VBUS state - reg = 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9150_charger_vbus_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_vbus_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da9150_charger*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.da9150_charger*
  store %struct.da9150_charger* %8, %struct.da9150_charger** %5, align 8
  %9 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %10 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DA9150_STATUS_H, align 4
  %13 = call i32 @da9150_reg_read(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DA9150_VBUS_STAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %23
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %19 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %22 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %25 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %28 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %31 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %36 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %29, %23, %17
  %38 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %39 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @power_supply_changed(i32* %40)
  %42 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %43 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @power_supply_changed(i32* %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i32 @da9150_reg_read(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @power_supply_changed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
