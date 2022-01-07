; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@USBINTR_INT_EN = common dso_local global i32 0, align 4
@USBINTR_ERR_INT_EN = common dso_local global i32 0, align 4
@USBINTR_PORT_CHANGE_DETECT_EN = common dso_local global i32 0, align 4
@USBINTR_RESET_EN = common dso_local global i32 0, align 4
@USBINTR_DEVICE_SUSPEND = common dso_local global i32 0, align 4
@USBCMD_RUN_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*)* @udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_start(%struct.mv_udc* %0) #0 {
  %2 = alloca %struct.mv_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %2, align 8
  %4 = load i32, i32* @USBINTR_INT_EN, align 4
  %5 = load i32, i32* @USBINTR_ERR_INT_EN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @USBINTR_PORT_CHANGE_DETECT_EN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @USBINTR_RESET_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @USBINTR_DEVICE_SUSPEND, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %15 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @writel(i32 %13, i32* %17)
  %19 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %20 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @USBCMD_RUN_STOP, align 4
  %22 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %23 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @writel(i32 %21, i32* %25)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
