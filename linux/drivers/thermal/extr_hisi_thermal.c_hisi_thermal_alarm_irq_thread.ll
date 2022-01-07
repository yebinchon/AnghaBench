; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_alarm_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_alarm_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_thermal_sensor = type { i32, i32, i32, %struct.hisi_thermal_data* }
%struct.hisi_thermal_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.hisi_thermal_sensor*)* }

@.str = private unnamed_addr constant [36 x i8] c"sensor <%d> THERMAL ALARM: %d > %d\0A\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"sensor <%d> THERMAL ALARM stopped: %d < %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hisi_thermal_alarm_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_thermal_alarm_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_thermal_sensor*, align 8
  %6 = alloca %struct.hisi_thermal_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hisi_thermal_sensor*
  store %struct.hisi_thermal_sensor* %9, %struct.hisi_thermal_sensor** %5, align 8
  %10 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %10, i32 0, i32 3
  %12 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %11, align 8
  store %struct.hisi_thermal_data* %12, %struct.hisi_thermal_data** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %6, align 8
  %14 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %16, align 8
  %18 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %19 = call i32 %17(%struct.hisi_thermal_sensor* %18)
  %20 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %21 = call i32 @hisi_thermal_get_temp(%struct.hisi_thermal_sensor* %20, i32* %7)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %24 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %2
  %28 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %6, align 8
  %29 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %37 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_crit(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %38)
  %40 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %41 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %44 = call i32 @thermal_zone_device_update(i32 %42, i32 %43)
  br label %58

45:                                               ; preds = %2
  %46 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %6, align 8
  %47 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %51 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %55 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_crit(i32* %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %45, %27
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %59
}

declare dso_local i32 @hisi_thermal_get_temp(%struct.hisi_thermal_sensor*, i32*) #1

declare dso_local i32 @dev_crit(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
