; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dummy_hcd = type { i32 }
%struct.dummy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @dummy_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dummy_hcd*, align 8
  %6 = alloca %struct.dummy*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %9 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %8, i32 0, i32 0
  %10 = call %struct.dummy* @gadget_dev_to_dummy(i32* %9)
  store %struct.dummy* %10, %struct.dummy** %6, align 8
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %12 = call %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget* %11)
  store %struct.dummy_hcd* %12, %struct.dummy_hcd** %5, align 8
  %13 = load %struct.dummy*, %struct.dummy** %6, align 8
  %14 = getelementptr inbounds %struct.dummy, %struct.dummy* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.dummy*, %struct.dummy** %6, align 8
  %21 = getelementptr inbounds %struct.dummy, %struct.dummy* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %23 = call i32 @set_link_state(%struct.dummy_hcd* %22)
  %24 = load %struct.dummy*, %struct.dummy** %6, align 8
  %25 = getelementptr inbounds %struct.dummy, %struct.dummy* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %29 = call i32 @dummy_hcd_to_hcd(%struct.dummy_hcd* %28)
  %30 = call i32 @usb_hcd_poll_rh_status(i32 %29)
  ret i32 0
}

declare dso_local %struct.dummy* @gadget_dev_to_dummy(i32*) #1

declare dso_local %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_link_state(%struct.dummy_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

declare dso_local i32 @dummy_hcd_to_hcd(%struct.dummy_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
