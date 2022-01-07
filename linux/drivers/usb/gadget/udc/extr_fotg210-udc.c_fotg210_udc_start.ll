; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.fotg210_udc = type { i64, %struct.usb_gadget_driver* }

@FOTG210_DMCR = common dso_local global i64 0, align 8
@DMCR_GLINT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @fotg210_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.fotg210_udc*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.fotg210_udc* @gadget_to_fotg210(%struct.usb_gadget* %7)
  store %struct.fotg210_udc* %8, %struct.fotg210_udc** %5, align 8
  %9 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %10 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %13 = load %struct.fotg210_udc*, %struct.fotg210_udc** %5, align 8
  %14 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %13, i32 0, i32 1
  store %struct.usb_gadget_driver* %12, %struct.usb_gadget_driver** %14, align 8
  %15 = load %struct.fotg210_udc*, %struct.fotg210_udc** %5, align 8
  %16 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FOTG210_DMCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @DMCR_GLINT_EN, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.fotg210_udc*, %struct.fotg210_udc** %5, align 8
  %26 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FOTG210_DMCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite32(i32 %24, i64 %29)
  ret i32 0
}

declare dso_local %struct.fotg210_udc* @gadget_to_fotg210(%struct.usb_gadget*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
