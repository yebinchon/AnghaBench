; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_request_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_request_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lte_udev = type { i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.hci_packet = type { i32*, i8*, i8* }

@LTE_GET_INFORMATION = common dso_local global i32 0, align 4
@MAC_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lte_udev*)* @request_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_mac_address(%struct.lte_udev* %0) #0 {
  %2 = alloca %struct.lte_udev*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca %struct.hci_packet*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lte_udev* %0, %struct.lte_udev** %2, align 8
  %8 = bitcast [16 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false)
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %10 = bitcast i32* %9 to %struct.hci_packet*
  store %struct.hci_packet* %10, %struct.hci_packet** %4, align 8
  %11 = load %struct.lte_udev*, %struct.lte_udev** %2, align 8
  %12 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %11, i32 0, i32 2
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %5, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.lte_udev*, %struct.lte_udev** %2, align 8
  %15 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LTE_GET_INFORMATION, align 4
  %18 = call i8* @gdm_cpu_to_dev16(i32 %16, i32 %17)
  %19 = load %struct.hci_packet*, %struct.hci_packet** %4, align 8
  %20 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.lte_udev*, %struct.lte_udev** %2, align 8
  %22 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @gdm_cpu_to_dev16(i32 %23, i32 1)
  %25 = load %struct.hci_packet*, %struct.hci_packet** %4, align 8
  %26 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @MAC_ADDRESS, align 4
  %28 = load %struct.hci_packet*, %struct.hci_packet** %4, align 8
  %29 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %34 = call i32 @usb_sndbulkpipe(%struct.usb_device* %33, i32 2)
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %36 = call i32 @usb_bulk_msg(%struct.usb_device* %32, i32 %34, i32* %35, i32 5, i32* %6, i32 1000)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.lte_udev*, %struct.lte_udev** %2, align 8
  %38 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @gdm_cpu_to_dev16(i32, i32) #2

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
