; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_thermal_alarm_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_thermal_alarm_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_thermal_data = type { %struct.TYPE_4__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 (i32)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"thermal alarm\0A\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_thermal_alarm_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_thermal_alarm_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_thermal_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.rockchip_thermal_data*
  store %struct.rockchip_thermal_data* %8, %struct.rockchip_thermal_data** %5, align 8
  %9 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %10 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %15 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %20 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %42, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %26 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %33 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %41 = call i32 @thermal_zone_device_update(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
