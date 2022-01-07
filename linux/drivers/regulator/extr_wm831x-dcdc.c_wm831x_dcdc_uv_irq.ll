; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_uv_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_uv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_dcdc = type { i32 }

@REGULATOR_EVENT_UNDER_VOLTAGE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm831x_dcdc_uv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_dcdc_uv_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm831x_dcdc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.wm831x_dcdc*
  store %struct.wm831x_dcdc* %7, %struct.wm831x_dcdc** %5, align 8
  %8 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %9 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_lock(i32 %10)
  %12 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %13 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REGULATOR_EVENT_UNDER_VOLTAGE, align 4
  %16 = call i32 @regulator_notifier_call_chain(i32 %14, i32 %15, i32* null)
  %17 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %5, align 8
  %18 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_unlock(i32 %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local i32 @regulator_lock(i32) #1

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @regulator_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
