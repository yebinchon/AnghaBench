; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep_filltxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_qe_ep_filltxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i32, %struct.qe_udc* }
%struct.qe_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_CMD_STR_FIFO = common dso_local global i32 0, align 4
@USB_CMD_EP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*)* @qe_ep_filltxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_ep_filltxfifo(%struct.qe_ep* %0) #0 {
  %2 = alloca %struct.qe_ep*, align 8
  %3 = alloca %struct.qe_udc*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %2, align 8
  %4 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %5 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %4, i32 0, i32 1
  %6 = load %struct.qe_udc*, %struct.qe_udc** %5, align 8
  store %struct.qe_udc* %6, %struct.qe_udc** %3, align 8
  %7 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %8 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @USB_CMD_STR_FIFO, align 4
  %12 = load i32, i32* @USB_CMD_EP_MASK, align 4
  %13 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %14 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  %17 = or i32 %11, %16
  %18 = call i32 @out_8(i32* %10, i32 %17)
  ret i32 0
}

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
