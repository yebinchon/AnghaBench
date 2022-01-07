; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_tx.c_vhci_send_cmd_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_tx.c_vhci_send_cmd_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vhci_unlink = type { i32, i32 }
%struct.msghdr = type { i32, %struct.msghdr*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.kvec = type { i32, %struct.kvec*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.usbip_header = type { i32, %struct.usbip_header*, %struct.TYPE_7__, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [23 x i8] c"setup cmd unlink, %lu\0A\00", align 1
@USBIP_CMD_UNLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"sendmsg failed!, ret=%d for %zd\0A\00", align 1
@VDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"send txdata\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhci_device*)* @vhci_send_cmd_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_send_cmd_unlink(%struct.vhci_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca %struct.vhci_unlink*, align 8
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca %struct.kvec, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usbip_header, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %3, align 8
  store %struct.vhci_unlink* null, %struct.vhci_unlink** %4, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %70, %1
  %12 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %13 = call %struct.vhci_unlink* @dequeue_from_unlink_tx(%struct.vhci_device* %12)
  store %struct.vhci_unlink* %13, %struct.vhci_unlink** %4, align 8
  %14 = icmp ne %struct.vhci_unlink* %13, null
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = call i32 @memset(%struct.usbip_header* %10, i32 0, i32 48)
  %17 = bitcast %struct.msghdr* %5 to %struct.usbip_header*
  %18 = call i32 @memset(%struct.usbip_header* %17, i32 0, i32 48)
  %19 = bitcast %struct.kvec* %6 to %struct.usbip_header*
  %20 = call i32 @memset(%struct.usbip_header* %19, i32 0, i32 48)
  %21 = load %struct.vhci_unlink*, %struct.vhci_unlink** %4, align 8
  %22 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @usbip_dbg_vhci_tx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @USBIP_CMD_UNLINK, align 4
  %26 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vhci_unlink*, %struct.vhci_unlink** %4, align 8
  %29 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %34 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.vhci_unlink*, %struct.vhci_unlink** %4, align 8
  %41 = getelementptr inbounds %struct.vhci_unlink, %struct.vhci_unlink* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %10, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = call i32 @usbip_header_correct_endian(%struct.usbip_header* %10, i32 1)
  %47 = bitcast %struct.usbip_header* %10 to %struct.kvec*
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 1
  store %struct.kvec* %47, %struct.kvec** %48, align 8
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 0
  store i32 48, i32* %49, align 8
  store i64 48, i64* %7, align 8
  %50 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %51 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %struct.msghdr* %5 to %struct.usbip_header*
  %55 = bitcast %struct.kvec* %6 to %struct.usbip_header*
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @kernel_sendmsg(i32 %53, %struct.usbip_header* %54, %struct.usbip_header* %55, i32 1, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %15
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64)
  %66 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %67 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %66, i32 0, i32 0
  %68 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %69 = call i32 @usbip_event_add(%struct.TYPE_8__* %67, i32 %68)
  store i32 -1, i32* %2, align 4
  br label %78

70:                                               ; preds = %15
  %71 = call i32 (i8*, ...) @usbip_dbg_vhci_tx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %11

75:                                               ; preds = %11
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %62
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.vhci_unlink* @dequeue_from_unlink_tx(%struct.vhci_device*) #1

declare dso_local i32 @memset(%struct.usbip_header*, i32, i32) #1

declare dso_local i32 @usbip_dbg_vhci_tx(i8*, ...) #1

declare dso_local i32 @usbip_header_correct_endian(%struct.usbip_header*, i32) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.usbip_header*, %struct.usbip_header*, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
