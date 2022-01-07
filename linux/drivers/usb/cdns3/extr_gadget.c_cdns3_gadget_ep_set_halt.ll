; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_gadget_ep_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_endpoint = type { i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i32 }

@EP_ENABLED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EP_WEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_gadget_ep_set_halt(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdns3_endpoint*, align 8
  %7 = alloca %struct.cdns3_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = call %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep* %10)
  store %struct.cdns3_endpoint* %11, %struct.cdns3_endpoint** %6, align 8
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 1
  %14 = load %struct.cdns3_device*, %struct.cdns3_device** %13, align 8
  store %struct.cdns3_device* %14, %struct.cdns3_device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %16 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EP_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %26 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %30 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cdns3_select_ep(%struct.cdns3_device* %29, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* @EP_WEDGE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %42 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %46 = call i32 @__cdns3_gadget_ep_clear_halt(%struct.cdns3_endpoint* %45)
  store i32 %46, i32* %9, align 4
  br label %50

47:                                               ; preds = %24
  %48 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %49 = call i32 @__cdns3_gadget_ep_set_halt(%struct.cdns3_endpoint* %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.cdns3_device*, %struct.cdns3_device** %7, align 8
  %52 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.cdns3_endpoint* @ep_to_cdns3_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @__cdns3_gadget_ep_clear_halt(%struct.cdns3_endpoint*) #1

declare dso_local i32 @__cdns3_gadget_ep_set_halt(%struct.cdns3_endpoint*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
