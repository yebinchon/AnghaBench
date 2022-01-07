; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usba_udc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@USBA_REMOTE_WAKE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @usba_udc_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_udc_wakeup(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %8 = call %struct.usba_udc* @to_usba_udc(%struct.usb_gadget* %7)
  store %struct.usba_udc* %8, %struct.usba_udc** %3, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %12 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %16 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %24 = load i32, i32* @CTRL, align 4
  %25 = call i32 @usba_readl(%struct.usba_udc* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %27 = load i32, i32* @CTRL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @USBA_REMOTE_WAKE_UP, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @usba_writel(%struct.usba_udc* %26, i32 %27, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %34 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %33, i32 0, i32 1
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.usba_udc* @to_usba_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usba_readl(%struct.usba_udc*, i32) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
