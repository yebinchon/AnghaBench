; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_amd5536_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_amd5536_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.udc = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.usb_gadget_driver* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@UDC_EP0OUT_IX = common dso_local global i64 0, align 8
@UDC_DEVCTL_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @amd5536_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd5536_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca %struct.udc*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.udc* @to_amd5536_udc(%struct.usb_gadget* %7)
  store %struct.udc* %8, %struct.udc** %5, align 8
  %9 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %10 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %13 = load %struct.udc*, %struct.udc** %5, align 8
  %14 = getelementptr inbounds %struct.udc, %struct.udc* %13, i32 0, i32 2
  store %struct.usb_gadget_driver* %12, %struct.usb_gadget_driver** %14, align 8
  %15 = load %struct.udc*, %struct.udc** %5, align 8
  %16 = getelementptr inbounds %struct.udc, %struct.udc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i64, i64* @UDC_EP0IN_IX, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.udc*, %struct.udc** %5, align 8
  %24 = getelementptr inbounds %struct.udc, %struct.udc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  %30 = load %struct.udc*, %struct.udc** %5, align 8
  %31 = call i32 @setup_ep0(%struct.udc* %30)
  %32 = load %struct.udc*, %struct.udc** %5, align 8
  %33 = getelementptr inbounds %struct.udc, %struct.udc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @readl(i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @UDC_DEVCTL_SD, align 4
  %39 = call i32 @AMD_CLEAR_BIT(i32 %38)
  %40 = and i32 %37, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.udc*, %struct.udc** %5, align 8
  %43 = getelementptr inbounds %struct.udc, %struct.udc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @writel(i32 %41, i32* %45)
  %47 = load %struct.udc*, %struct.udc** %5, align 8
  %48 = call i32 @usb_connect(%struct.udc* %47)
  ret i32 0
}

declare dso_local %struct.udc* @to_amd5536_udc(%struct.usb_gadget*) #1

declare dso_local i32 @setup_ep0(%struct.udc*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_CLEAR_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @usb_connect(%struct.udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
