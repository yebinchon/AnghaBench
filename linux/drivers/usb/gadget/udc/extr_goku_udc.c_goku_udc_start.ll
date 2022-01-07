; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_goku_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_goku_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.goku_udc = type { %struct.usb_gadget_driver* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @goku_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goku_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.goku_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.goku_udc* @to_goku_udc(%struct.usb_gadget* %6)
  store %struct.goku_udc* %7, %struct.goku_udc** %5, align 8
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %9 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %12 = load %struct.goku_udc*, %struct.goku_udc** %5, align 8
  %13 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %12, i32 0, i32 0
  store %struct.usb_gadget_driver* %11, %struct.usb_gadget_driver** %13, align 8
  %14 = load %struct.goku_udc*, %struct.goku_udc** %5, align 8
  %15 = call i32 @udc_enable(%struct.goku_udc* %14)
  ret i32 0
}

declare dso_local %struct.goku_udc* @to_goku_udc(%struct.usb_gadget*) #1

declare dso_local i32 @udc_enable(%struct.goku_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
