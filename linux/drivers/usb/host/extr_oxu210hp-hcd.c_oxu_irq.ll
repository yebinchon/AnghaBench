; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.oxu_hcd = type { i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@OXU_CHIPIRQSTATUS = common dso_local global i32 0, align 4
@OXU_CHIPIRQEN_SET = common dso_local global i32 0, align 4
@OXU_CHIPIRQEN_CLR = common dso_local global i32 0, align 4
@OXU_USBOTGI = common dso_local global i32 0, align 4
@OXU_USBSPHI = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @oxu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_irq(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %7)
  store %struct.oxu_hcd* %8, %struct.oxu_hcd** %3, align 8
  %9 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OXU_CHIPIRQSTATUS, align 4
  %14 = call i32 @oxu_readl(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OXU_CHIPIRQEN_SET, align 4
  %19 = call i32 @oxu_readl(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OXU_CHIPIRQEN_CLR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @oxu_writel(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @OXU_USBOTGI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @OXU_USBSPHI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %30
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %47 = call i32 @oxu210_hcd_irq(%struct.usb_hcd* %46)
  br label %50

48:                                               ; preds = %40, %35
  %49 = load i32, i32* @IRQ_NONE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OXU_CHIPIRQEN_SET, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @oxu_writel(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @oxu_readl(i32, i32) #1

declare dso_local i32 @oxu_writel(i32, i32, i32) #1

declare dso_local i32 @oxu210_hcd_irq(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
