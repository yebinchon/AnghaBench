; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_eprx_nack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_eprx_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i64, i64, %struct.qe_udc* }
%struct.qe_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@EP_STATE_IDLE = common dso_local global i64 0, align 8
@USB_RHS_MASK = common dso_local global i32 0, align 4
@USB_RHS_NACK = common dso_local global i32 0, align 4
@USB_E_RXB_MASK = common dso_local global i32 0, align 4
@USB_E_BSY_MASK = common dso_local global i32 0, align 4
@EP_STATE_NACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*)* @qe_eprx_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_eprx_nack(%struct.qe_ep* %0) #0 {
  %2 = alloca %struct.qe_ep*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qe_udc*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %2, align 8
  %5 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %6 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %9 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %8, i32 0, i32 2
  %10 = load %struct.qe_udc*, %struct.qe_udc** %9, align 8
  store %struct.qe_udc* %10, %struct.qe_udc** %4, align 8
  %11 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %12 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EP_STATE_IDLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.qe_udc*, %struct.qe_udc** %4, align 8
  %18 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* @USB_RHS_MASK, align 4
  %25 = load i32, i32* @USB_RHS_NACK, align 4
  %26 = call i32 @clrsetbits_be16(i32* %23, i32 %24, i32 %25)
  %27 = load %struct.qe_udc*, %struct.qe_udc** %4, align 8
  %28 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* @USB_E_RXB_MASK, align 4
  %32 = load i32, i32* @USB_E_BSY_MASK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @clrbits16(i32* %30, i32 %33)
  %35 = load i64, i64* @EP_STATE_NACK, align 8
  %36 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %37 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local i32 @clrsetbits_be16(i32*, i32, i32) #1

declare dso_local i32 @clrbits16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
