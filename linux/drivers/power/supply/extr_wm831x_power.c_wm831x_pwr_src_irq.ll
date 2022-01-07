; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_pwr_src_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_pwr_src_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_power = type { i32, i32, i32, i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Power source changed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm831x_pwr_src_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_pwr_src_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wm831x_power*, align 8
  %6 = alloca %struct.wm831x*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wm831x_power*
  store %struct.wm831x_power* %8, %struct.wm831x_power** %5, align 8
  %9 = load %struct.wm831x_power*, %struct.wm831x_power** %5, align 8
  %10 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %9, i32 0, i32 4
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %6, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wm831x_power*, %struct.wm831x_power** %5, align 8
  %17 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.wm831x_power*, %struct.wm831x_power** %5, align 8
  %22 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @power_supply_changed(i32 %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.wm831x_power*, %struct.wm831x_power** %5, align 8
  %27 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @power_supply_changed(i32 %28)
  %30 = load %struct.wm831x_power*, %struct.wm831x_power** %5, align 8
  %31 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @power_supply_changed(i32 %32)
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %34
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
