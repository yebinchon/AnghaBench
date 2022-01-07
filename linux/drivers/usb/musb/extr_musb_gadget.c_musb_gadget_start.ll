; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64 }
%struct.musb = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.usb_gadget_driver*, i64 }
%struct.TYPE_2__ = type { i64, %struct.usb_otg* }
%struct.usb_otg = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@USB_EVENT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @musb_gadget_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_gadget_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.musb*, align 8
  %7 = alloca %struct.usb_otg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %11 = call %struct.musb* @gadget_to_musb(%struct.usb_gadget* %10)
  store %struct.musb* %11, %struct.musb** %6, align 8
  %12 = load %struct.musb*, %struct.musb** %6, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.usb_otg*, %struct.usb_otg** %15, align 8
  store %struct.usb_otg* %16, %struct.usb_otg** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %18 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_SPEED_HIGH, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.musb*, %struct.musb** %6, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_get_sync(i32 %28)
  %30 = load %struct.musb*, %struct.musb** %6, align 8
  %31 = getelementptr inbounds %struct.musb, %struct.musb* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %33 = load %struct.musb*, %struct.musb** %6, align 8
  %34 = getelementptr inbounds %struct.musb, %struct.musb* %33, i32 0, i32 5
  store %struct.usb_gadget_driver* %32, %struct.usb_gadget_driver** %34, align 8
  %35 = load %struct.musb*, %struct.musb** %6, align 8
  %36 = getelementptr inbounds %struct.musb, %struct.musb* %35, i32 0, i32 3
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.musb*, %struct.musb** %6, align 8
  %40 = getelementptr inbounds %struct.musb, %struct.musb* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %42 = load %struct.musb*, %struct.musb** %6, align 8
  %43 = getelementptr inbounds %struct.musb, %struct.musb* %42, i32 0, i32 4
  %44 = call i32 @otg_set_peripheral(%struct.usb_otg* %41, i32* %43)
  %45 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %46 = load %struct.musb*, %struct.musb** %6, align 8
  %47 = getelementptr inbounds %struct.musb, %struct.musb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.usb_otg*, %struct.usb_otg** %49, align 8
  %51 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  %52 = load %struct.musb*, %struct.musb** %6, align 8
  %53 = getelementptr inbounds %struct.musb, %struct.musb* %52, i32 0, i32 3
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.musb*, %struct.musb** %6, align 8
  %57 = call i32 @musb_start(%struct.musb* %56)
  %58 = load %struct.musb*, %struct.musb** %6, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @USB_EVENT_ID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %25
  %66 = load %struct.musb*, %struct.musb** %6, align 8
  %67 = call i32 @musb_platform_set_vbus(%struct.musb* %66, i32 1)
  br label %68

68:                                               ; preds = %65, %25
  %69 = load %struct.musb*, %struct.musb** %6, align 8
  %70 = getelementptr inbounds %struct.musb, %struct.musb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_mark_last_busy(i32 %71)
  %73 = load %struct.musb*, %struct.musb** %6, align 8
  %74 = getelementptr inbounds %struct.musb, %struct.musb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pm_runtime_put_autosuspend(i32 %75)
  store i32 0, i32* %3, align 4
  br label %79

77:                                               ; preds = %22
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.musb* @gadget_to_musb(%struct.usb_gadget*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @otg_set_peripheral(%struct.usb_otg*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @musb_start(%struct.musb*) #1

declare dso_local i32 @musb_platform_set_vbus(%struct.musb*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
