; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_fifo_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_ep_fifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usba_ep = type { i32, %struct.usba_udc* }
%struct.usba_udc = type { i32 }

@EPT_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*)* @usba_ep_fifo_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usba_ep_fifo_flush(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.usba_ep*, align 8
  %4 = alloca %struct.usba_udc*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %5 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %6 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %5)
  store %struct.usba_ep* %6, %struct.usba_ep** %3, align 8
  %7 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %8 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %7, i32 0, i32 1
  %9 = load %struct.usba_udc*, %struct.usba_udc** %8, align 8
  store %struct.usba_udc* %9, %struct.usba_udc** %4, align 8
  %10 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %11 = load i32, i32* @EPT_RST, align 4
  %12 = load %struct.usba_ep*, %struct.usba_ep** %3, align 8
  %13 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  %16 = call i32 @usba_writel(%struct.usba_udc* %10, i32 %11, i32 %15)
  ret void
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
