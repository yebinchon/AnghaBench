; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_mdm6600 = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }

@PHY_MDM6600_STATUS0 = common dso_local global i32 0, align 4
@PHY_MDM6600_STATUS2 = common dso_local global i32 0, align 4
@phy_mdm6600_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mdm6600\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no modem status irq%i: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_mdm6600*)* @phy_mdm6600_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_mdm6600_init_irq(%struct.phy_mdm6600* %0) #0 {
  %2 = alloca %struct.phy_mdm6600*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_desc*, align 8
  store %struct.phy_mdm6600* %0, %struct.phy_mdm6600** %2, align 8
  %8 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %9 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load i32, i32* @PHY_MDM6600_STATUS0, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PHY_MDM6600_STATUS2, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %18 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.gpio_desc**, %struct.gpio_desc*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %21, i64 %23
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %24, align 8
  store %struct.gpio_desc* %25, %struct.gpio_desc** %7, align 8
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %27 = call i32 @gpiod_to_irq(%struct.gpio_desc* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %50

31:                                               ; preds = %16
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @phy_mdm6600_irq_thread, align 4
  %35 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %36 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IRQF_ONESHOT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %2, align 8
  %41 = call i32 @devm_request_threaded_irq(%struct.device* %32, i32 %33, i32* null, i32 %34, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.phy_mdm6600* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %31
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %12

53:                                               ; preds = %12
  ret void
}

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.phy_mdm6600*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
