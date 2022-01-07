; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_rx.c_vhci_rx_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_rx.c_vhci_rx_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhci_rx_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usbip_device*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.usbip_device*
  store %struct.usbip_device* %5, %struct.usbip_device** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = call i32 (...) @kthread_should_stop()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %12 = call i64 @usbip_event_happened(%struct.usbip_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  %16 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %17 = call i32 @vhci_rx_pdu(%struct.usbip_device* %16)
  br label %6

18:                                               ; preds = %14, %6
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @usbip_event_happened(%struct.usbip_device*) #1

declare dso_local i32 @vhci_rx_pdu(%struct.usbip_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
