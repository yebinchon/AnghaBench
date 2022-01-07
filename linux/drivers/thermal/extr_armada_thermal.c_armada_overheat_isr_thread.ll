; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_overheat_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_overheat_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@OVERHEAT_INT_POLL_DELAY_MS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @armada_overheat_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_overheat_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.armada_thermal_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.armada_thermal_priv*
  store %struct.armada_thermal_priv* %11, %struct.armada_thermal_priv** %5, align 8
  %12 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %13 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %16 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %20 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %23 = call i32 @thermal_zone_device_update(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %39, %2
  %25 = load i32, i32* @OVERHEAT_INT_POLL_DELAY_MS, align 4
  %26 = call i32 @msleep(i32 %25)
  %27 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %28 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %27, i32 0, i32 5
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %31 = call i32 @armada_read_sensor(%struct.armada_thermal_priv* %30, i32* %7)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %33 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %32, i32 0, i32 5
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %58

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %24, label %43

43:                                               ; preds = %39
  %44 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %45 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %48 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_read(i32 %46, i32 %51, i32* %8)
  %53 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %5, align 8
  %54 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %57 = call i32 @thermal_zone_device_update(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %43, %37
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @enable_irq(i32 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @armada_read_sensor(%struct.armada_thermal_priv*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
