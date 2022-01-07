; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.musb = type { i32, i32, i32, i32*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @musb_gadget_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_gadget_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = call %struct.musb* @gadget_to_musb(%struct.usb_gadget* %5)
  store %struct.musb* %6, %struct.musb** %3, align 8
  %7 = load %struct.musb*, %struct.musb** %3, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.musb*, %struct.musb** %3, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.musb*, %struct.musb** %3, align 8
  %16 = call i32 @musb_hnp_stop(%struct.musb* %15)
  %17 = load %struct.musb*, %struct.musb** %3, align 8
  %18 = getelementptr inbounds %struct.musb, %struct.musb* %17, i32 0, i32 6
  %19 = call i32 @musb_gadget_vbus_draw(i32* %18, i32 0)
  %20 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %21 = load %struct.musb*, %struct.musb** %3, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %20, i32* %26, align 4
  %27 = load %struct.musb*, %struct.musb** %3, align 8
  %28 = call i32 @musb_stop(%struct.musb* %27)
  %29 = load %struct.musb*, %struct.musb** %3, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @otg_set_peripheral(%struct.TYPE_4__* %33, i32* null)
  %35 = load %struct.musb*, %struct.musb** %3, align 8
  %36 = getelementptr inbounds %struct.musb, %struct.musb* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.musb*, %struct.musb** %3, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.musb*, %struct.musb** %3, align 8
  %40 = call i32 @musb_platform_try_idle(%struct.musb* %39, i32 0)
  %41 = load %struct.musb*, %struct.musb** %3, align 8
  %42 = getelementptr inbounds %struct.musb, %struct.musb* %41, i32 0, i32 2
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.musb*, %struct.musb** %3, align 8
  %46 = getelementptr inbounds %struct.musb, %struct.musb* %45, i32 0, i32 1
  %47 = call i32 @schedule_delayed_work(i32* %46, i32 0)
  %48 = load %struct.musb*, %struct.musb** %3, align 8
  %49 = getelementptr inbounds %struct.musb, %struct.musb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pm_runtime_mark_last_busy(i32 %50)
  %52 = load %struct.musb*, %struct.musb** %3, align 8
  %53 = getelementptr inbounds %struct.musb, %struct.musb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pm_runtime_put_autosuspend(i32 %54)
  ret i32 0
}

declare dso_local %struct.musb* @gadget_to_musb(%struct.usb_gadget*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_hnp_stop(%struct.musb*) #1

declare dso_local i32 @musb_gadget_vbus_draw(i32*, i32) #1

declare dso_local i32 @musb_stop(%struct.musb*) #1

declare dso_local i32 @otg_set_peripheral(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @musb_platform_try_idle(%struct.musb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
