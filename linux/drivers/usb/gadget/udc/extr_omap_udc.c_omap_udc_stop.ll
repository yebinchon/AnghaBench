; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_omap_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_omap_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_gadget = type { i32 }

@udc = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @omap_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @omap_udc_enable_clock(i32 1)
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i64 (...) @machine_without_vbus_sense()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = call i32 @omap_vbus_session(i32* %15, i32 0)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_6__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @otg_set_peripheral(i32 %28, i32* null)
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %32 = call i32 @pullup_disable(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %39 = call i32 @udc_quiesce(%struct.TYPE_5__* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = call i32 @omap_udc_enable_clock(i32 0)
  br label %52

52:                                               ; preds = %50, %33
  ret i32 0
}

declare dso_local i32 @omap_udc_enable_clock(i32) #1

declare dso_local i64 @machine_without_vbus_sense(...) #1

declare dso_local i32 @omap_vbus_session(i32*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_6__*) #1

declare dso_local i32 @otg_set_peripheral(i32, i32*) #1

declare dso_local i32 @pullup_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @udc_quiesce(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
