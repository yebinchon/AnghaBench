; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_irq_epc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB3_USB_INT_STA_1 = common dso_local global i32 0, align 4
@USB3_USB_INT_STA_2 = common dso_local global i32 0, align 4
@USB3_USB_OTG_INT_STA = common dso_local global i32 0, align 4
@USB3_USB_INT_ENA_1 = common dso_local global i32 0, align 4
@USB3_USB_INT_ENA_2 = common dso_local global i32 0, align 4
@USB3_USB_OTG_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_irq_epc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_irq_epc(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %6 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %7 = load i32, i32* @USB3_USB_INT_STA_1, align 4
  %8 = call i32 @usb3_read(%struct.renesas_usb3* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %10 = load i32, i32* @USB3_USB_INT_STA_2, align 4
  %11 = call i32 @usb3_read(%struct.renesas_usb3* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %13 = load i32, i32* @USB3_USB_OTG_INT_STA, align 4
  %14 = call i32 @usb3_read(%struct.renesas_usb3* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %16 = load i32, i32* @USB3_USB_INT_ENA_1, align 4
  %17 = call i32 @usb3_read(%struct.renesas_usb3* %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @USB3_USB_INT_STA_1, align 4
  %26 = call i32 @usb3_write(%struct.renesas_usb3* %23, i32 %24, i32 %25)
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @usb3_irq_epc_int_1(%struct.renesas_usb3* %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %32 = load i32, i32* @USB3_USB_INT_ENA_2, align 4
  %33 = call i32 @usb3_read(%struct.renesas_usb3* %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @usb3_irq_epc_int_2(%struct.renesas_usb3* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %44 = load i32, i32* @USB3_USB_OTG_INT_ENA, align 4
  %45 = call i32 @usb3_read(%struct.renesas_usb3* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @USB3_USB_OTG_INT_STA, align 4
  %54 = call i32 @usb3_write(%struct.renesas_usb3* %51, i32 %52, i32 %53)
  %55 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @usb3_irq_otg_int(%struct.renesas_usb3* %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %42
  ret void
}

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_irq_epc_int_1(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_irq_epc_int_2(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_irq_otg_int(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
