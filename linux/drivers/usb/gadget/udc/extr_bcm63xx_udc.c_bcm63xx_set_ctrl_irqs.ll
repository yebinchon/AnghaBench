; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_set_ctrl_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_set_ctrl_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32 }

@USBD_STATUS_REG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_USB_RESET = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SETUP = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SETCFG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_SETINTF = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_USB_LINK = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_MASK_REG = common dso_local global i32 0, align 4
@USBD_EVENT_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*, i32)* @bcm63xx_set_ctrl_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_set_ctrl_irqs(%struct.bcm63xx_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %7 = load i32, i32* @USBD_STATUS_REG, align 4
  %8 = call i32 @usbd_writel(%struct.bcm63xx_udc* %6, i32 0, i32 %7)
  %9 = load i32, i32* @USBD_EVENT_IRQ_USB_RESET, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = load i32, i32* @USBD_EVENT_IRQ_SETUP, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @USBD_EVENT_IRQ_SETCFG, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @USBD_EVENT_IRQ_SETINTF, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @USBD_EVENT_IRQ_USB_LINK, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = or i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load i32, i32* @USBD_EVENT_IRQ_MASK_REG, align 4
  %32 = call i32 @usbd_writel(%struct.bcm63xx_udc* %23, i32 %30, i32 %31)
  %33 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @USBD_EVENT_IRQ_STATUS_REG, align 4
  %36 = call i32 @usbd_writel(%struct.bcm63xx_udc* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @usbd_writel(%struct.bcm63xx_udc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
