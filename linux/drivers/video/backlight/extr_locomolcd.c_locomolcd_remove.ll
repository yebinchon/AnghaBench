; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_locomolcd.c_locomolcd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_locomolcd.c_locomolcd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.locomo_dev = type { i32 }

@locomolcd_bl_device = common dso_local global %struct.TYPE_6__* null, align 8
@locomolcd_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.locomo_dev*)* @locomolcd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locomolcd_remove(%struct.locomo_dev* %0) #0 {
  %2 = alloca %struct.locomo_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.locomo_dev* %0, %struct.locomo_dev** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @locomolcd_bl_device, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @locomolcd_bl_device, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @locomolcd_bl_device, align 8
  %11 = call i32 @locomolcd_set_intensity(%struct.TYPE_6__* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @locomolcd_bl_device, align 8
  %13 = call i32 @backlight_device_unregister(%struct.TYPE_6__* %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  store i32* null, i32** @locomolcd_dev, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @local_irq_restore(i64 %16)
  ret i32 0
}

declare dso_local i32 @locomolcd_set_intensity(%struct.TYPE_6__*) #1

declare dso_local i32 @backlight_device_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
