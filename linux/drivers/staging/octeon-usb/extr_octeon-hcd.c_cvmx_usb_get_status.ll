; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_usb_port_status = type { i64, i32, i32, i32, i32, i32 }
%struct.octeon_hcd = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%union.cvmx_usbcx_hprt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvmx_usb_port_status*, %struct.octeon_hcd*)* @cvmx_usb_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_get_status(%struct.cvmx_usb_port_status* noalias sret %0, %struct.octeon_hcd* %1) #0 {
  %3 = alloca %struct.octeon_hcd*, align 8
  %4 = alloca %union.cvmx_usbcx_hprt, align 8
  store %struct.octeon_hcd* %1, %struct.octeon_hcd** %3, align 8
  %5 = call i32 @memset(%struct.cvmx_usb_port_status* %0, i32 0, i32 32)
  %6 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %7 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @CVMX_USBCX_HPRT(i32 %9)
  %11 = call i32 @cvmx_usb_read_csr32(%struct.octeon_hcd* %6, i32 %10)
  %12 = bitcast %union.cvmx_usbcx_hprt* %4 to i32*
  store i32 %11, i32* %12, align 8
  %13 = bitcast %union.cvmx_usbcx_hprt* %4 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = bitcast %union.cvmx_usbcx_hprt* %4 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = bitcast %union.cvmx_usbcx_hprt* %4 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = bitcast %union.cvmx_usbcx_hprt* %4 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = bitcast %union.cvmx_usbcx_hprt* %4 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.cvmx_usb_port_status, %struct.cvmx_usb_port_status* %0, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  ret void
}

declare dso_local i32 @memset(%struct.cvmx_usb_port_status*, i32, i32) #1

declare dso_local i32 @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_HPRT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
