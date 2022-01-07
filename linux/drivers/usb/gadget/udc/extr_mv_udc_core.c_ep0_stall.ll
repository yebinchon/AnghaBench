; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ep0_stall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ep0_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EPCTRL_RX_EP_STALL = common dso_local global i32 0, align 4
@EPCTRL_TX_EP_STALL = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*)* @ep0_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_stall(%struct.mv_udc* %0) #0 {
  %2 = alloca %struct.mv_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %2, align 8
  %4 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %5 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EPCTRL_RX_EP_STALL, align 4
  %12 = load i32, i32* @EPCTRL_TX_EP_STALL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %18 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @writel(i32 %16, i32* %22)
  %24 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %25 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %26 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @EP_DIR_OUT, align 4
  %28 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %29 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
