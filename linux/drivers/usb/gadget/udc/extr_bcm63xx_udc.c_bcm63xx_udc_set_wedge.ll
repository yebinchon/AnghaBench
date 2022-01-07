; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_set_wedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_set_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.bcm63xx_ep = type { i32, %struct.bcm63xx_udc* }
%struct.bcm63xx_udc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @bcm63xx_udc_set_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_udc_set_wedge(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.bcm63xx_ep*, align 8
  %4 = alloca %struct.bcm63xx_udc*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %7 = call %struct.bcm63xx_ep* @our_ep(%struct.usb_ep* %6)
  store %struct.bcm63xx_ep* %7, %struct.bcm63xx_ep** %3, align 8
  %8 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %3, align 8
  %9 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %8, i32 0, i32 1
  %10 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  store %struct.bcm63xx_udc* %10, %struct.bcm63xx_udc** %4, align 8
  %11 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %12 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %3, align 8
  %16 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %19 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %22 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %3, align 8
  %23 = call i32 @bcm63xx_set_stall(%struct.bcm63xx_udc* %21, %struct.bcm63xx_ep* %22, i32 1)
  %24 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %4, align 8
  %25 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret i32 0
}

declare dso_local %struct.bcm63xx_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bcm63xx_set_stall(%struct.bcm63xx_udc*, %struct.bcm63xx_ep*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
