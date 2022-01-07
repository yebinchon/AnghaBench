; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_wd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_wd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arche_platform_drvdata = type { i64, i32, i64, i32 }

@WD_STATE_BOOT_INIT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@WD_COLDBOOT_PULSE_WIDTH_MS = common dso_local global i32 0, align 4
@WD_STATE_IDLE = common dso_local global i64 0, align 8
@WD_STATE_COLDBOOT_START = common dso_local global i64 0, align 8
@WD_STATE_COLDBOOT_TRIG = common dso_local global i64 0, align 8
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arche_platform_wd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arche_platform_wd_irq(i32 %0, i8* %1) #0 {
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
  %15 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @gpiod_get_value(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %2
  %20 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %21 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WD_STATE_BOOT_INIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %28 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @WD_COLDBOOT_PULSE_WIDTH_MS, align 4
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i64 @time_before(i64 %26, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %37 = load i64, i64* @WD_STATE_IDLE, align 8
  %38 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %36, i64 %37)
  br label %55

39:                                               ; preds = %25
  %40 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %41 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WD_STATE_COLDBOOT_START, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %47 = load i64, i64* @WD_STATE_COLDBOOT_TRIG, align 8
  %48 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %46, i64 %47)
  %49 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %50 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %49, i32 0, i32 1
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %53, i32* %3, align 4
  br label %77

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %19
  br label %71

57:                                               ; preds = %2
  %58 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %59 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WD_STATE_IDLE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i64, i64* @jiffies, align 8
  %65 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %66 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %68 = load i64, i64* @WD_STATE_BOOT_INIT, align 8
  %69 = call i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata* %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %6, align 8
  %73 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %72, i32 0, i32 1
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %45
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @arche_platform_set_wake_detect_state(%struct.arche_platform_drvdata*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
