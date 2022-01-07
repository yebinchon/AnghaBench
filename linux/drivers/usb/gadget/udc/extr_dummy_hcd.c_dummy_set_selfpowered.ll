; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_set_selfpowered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_set_selfpowered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dummy = type { i32 }
%struct.TYPE_2__ = type { %struct.dummy* }

@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @dummy_set_selfpowered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_set_selfpowered(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dummy*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %10 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %12 = call %struct.TYPE_2__* @gadget_to_dummy_hcd(%struct.usb_gadget* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.dummy*, %struct.dummy** %13, align 8
  store %struct.dummy* %14, %struct.dummy** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.dummy*, %struct.dummy** %5, align 8
  %21 = getelementptr inbounds %struct.dummy, %struct.dummy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.dummy*, %struct.dummy** %5, align 8
  %29 = getelementptr inbounds %struct.dummy, %struct.dummy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %17
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @gadget_to_dummy_hcd(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
