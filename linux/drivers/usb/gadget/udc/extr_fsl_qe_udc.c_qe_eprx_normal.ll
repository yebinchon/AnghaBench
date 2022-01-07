; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_eprx_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_eprx_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i64, i64, i64, %struct.qe_udc* }
%struct.qe_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@EP_STATE_NACK = common dso_local global i64 0, align 8
@USB_RTHS_MASK = common dso_local global i32 0, align 4
@USB_THS_IGNORE_IN = common dso_local global i32 0, align 4
@USB_E_BSY_MASK = common dso_local global i32 0, align 4
@USB_E_RXB_MASK = common dso_local global i32 0, align 4
@EP_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*)* @qe_eprx_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_eprx_normal(%struct.qe_ep* %0) #0 {
  %2 = alloca %struct.qe_ep*, align 8
  %3 = alloca %struct.qe_udc*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %2, align 8
  %4 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %5 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %4, i32 0, i32 3
  %6 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  store %struct.qe_udc* %6, %struct.qe_udc** %3, align 8
  %7 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %8 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EP_STATE_NACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %14 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %19 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* @USB_RTHS_MASK, align 4
  %23 = load i32, i32* @USB_THS_IGNORE_IN, align 4
  %24 = call i32 @clrsetbits_be16(i32* %21, i32 %22, i32 %23)
  %25 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %26 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* @USB_E_BSY_MASK, align 4
  %30 = load i32, i32* @USB_E_RXB_MASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @out_be16(i32* %28, i32 %31)
  %33 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %34 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* @USB_E_RXB_MASK, align 4
  %38 = load i32, i32* @USB_E_BSY_MASK, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @setbits16(i32* %36, i32 %39)
  %41 = load i64, i64* @EP_STATE_IDLE, align 8
  %42 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %43 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %45 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @clrsetbits_be16(i32*, i32, i32) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @setbits16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
