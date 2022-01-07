; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_set_led_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_set_led_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moschip_port = type { i32, %struct.usb_ctrlrequest*, %struct.TYPE_4__* }
%struct.usb_ctrlrequest = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@MCS_WR_RTYPE = common dso_local global i32 0, align 4
@MCS_WRREQ = common dso_local global i32 0, align 4
@mos7840_set_led_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moschip_port*, i32, i32)* @mos7840_set_led_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_set_led_async(%struct.moschip_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.moschip_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.moschip_port* %0, %struct.moschip_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %10 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %7, align 8
  %16 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %17 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %16, i32 0, i32 1
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %17, align 8
  store %struct.usb_ctrlrequest* %18, %struct.usb_ctrlrequest** %8, align 8
  %19 = load i32, i32* @MCS_WR_RTYPE, align 4
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @MCS_WRREQ, align 4
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %32 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = call i8* @cpu_to_le16(i32 0)
  %34 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %35 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %37 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %41 = call i32 @usb_sndctrlpipe(%struct.usb_device* %40, i32 0)
  %42 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  %43 = bitcast %struct.usb_ctrlrequest* %42 to i8*
  %44 = load i32, i32* @mos7840_set_led_callback, align 4
  %45 = call i32 @usb_fill_control_urb(i32 %38, %struct.usb_device* %39, i32 %41, i8* %43, i32* null, i32 0, i32 %44, i32* null)
  %46 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %47 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @usb_submit_urb(i32 %48, i32 %49)
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32, %struct.usb_device*, i32, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
