; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa27x_change_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa27x_change_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, i32*, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"config=%d\0A\00", align 1
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@WAIT_ACK_SET_CONF_INTERF = common dso_local global i32 0, align 4
@UDCCSR0_AREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*, i32)* @pxa27x_change_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_change_configuration(%struct.pxa_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ctrlrequest, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %7 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %13 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %15 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %17 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %26 = load i32, i32* @WAIT_ACK_SET_CONF_INTERF, align 4
  %27 = call i32 @set_ep0state(%struct.pxa_udc* %25, i32 %26)
  %28 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %29 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %31, align 8
  %33 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %34 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %33, i32 0, i32 2
  %35 = call i32 %32(i32* %34, %struct.usb_ctrlrequest* %5)
  %36 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %37 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* @UDCCSR0_AREN, align 4
  %41 = call i32 @ep_write_UDCCSR(i32* %39, i32 %40)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @set_ep0state(%struct.pxa_udc*, i32) #1

declare dso_local i32 @ep_write_UDCCSR(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
