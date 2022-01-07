; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"could not obtain gpio for WILC_INTR\0A\00", align 1
@isr_uh_routine = common dso_local global i32 0, align 4
@isr_bh_routine = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"WILC_IRQ\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"IRQ request succeeded IRQ-NUM= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_irq(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %7)
  store %struct.wilc_vif* %8, %struct.wilc_vif** %5, align 8
  %9 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %10 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %9, i32 0, i32 0
  %11 = load %struct.wilc*, %struct.wilc** %10, align 8
  store %struct.wilc* %11, %struct.wilc** %6, align 8
  %12 = load %struct.wilc*, %struct.wilc** %6, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpiod_direction_input(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netdev_err(%struct.net_device* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %1
  %23 = load %struct.wilc*, %struct.wilc** %6, align 8
  %24 = getelementptr inbounds %struct.wilc, %struct.wilc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpiod_to_irq(i32 %25)
  %27 = load %struct.wilc*, %struct.wilc** %6, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wilc*, %struct.wilc** %6, align 8
  %30 = getelementptr inbounds %struct.wilc, %struct.wilc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @isr_uh_routine, align 4
  %33 = load i32, i32* @isr_bh_routine, align 4
  %34 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %35 = load i32, i32* @IRQF_ONESHOT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @request_threaded_irq(i32 %31, i32 %32, i32 %33, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %50

44:                                               ; preds = %22
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load %struct.wilc*, %struct.wilc** %6, align 8
  %47 = getelementptr inbounds %struct.wilc, %struct.wilc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_dbg(%struct.net_device* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
