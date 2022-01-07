; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_wd_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_wd_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arche_platform_drvdata = type { i64, i32, i32 }

@WD_STATE_COLDBOOT_TRIG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@WD_STATE_COLDBOOT_START = common dso_local global i32 0, align 4
@apb_poweroff = common dso_local global i32 0, align 4
@apb_cold_boot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to control hub device\0A\00", align 1
@WD_STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arche_platform_wd_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arche_platform_wd_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arche_platform_drvdata*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.arche_platform_drvdata*
  store %struct.arche_platform_drvdata* %9, %struct.arche_platform_drvdata** %6, align 8
  %10 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %11 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %15 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WD_STATE_COLDBOOT_TRIG, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %21 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %27 = load i32, i32* @WD_STATE_COLDBOOT_START, align 4
  %28 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %26, i32 %27)
  %29 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %30 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %29, i32 0, i32 1
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %34 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @apb_poweroff, align 4
  %37 = call i32 @device_for_each_child(i32 %35, i32* null, i32 %36)
  %38 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %39 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @apb_cold_boot, align 4
  %42 = call i32 @device_for_each_child(i32 %40, i32* null, i32 %41)
  %43 = call i64 @usb3613_hub_mode_ctrl(i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %25
  %46 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %47 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_warn(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %25
  %51 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %52 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %56 = load i32, i32* @WD_STATE_IDLE, align 4
  %57 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %55, i32 %56)
  %58 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %59 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %58, i32 0, i32 1
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata*, i32) #1

declare dso_local i32 @device_for_each_child(i32, i32*, i32) #1

declare dso_local i64 @usb3613_hub_mode_ctrl(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
