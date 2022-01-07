; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_reset_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@cvmx_usbcx_hprt = common dso_local global i32 0, align 4
@prtrst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*)* @cvmx_usb_reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_reset_port(%struct.octeon_hcd* %0) #0 {
  %2 = alloca %struct.octeon_hcd*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %2, align 8
  %3 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %4 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @CVMX_USBCX_HPRT(i32 %6)
  %8 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %3, i32 %7)
  %9 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %8, i8** %11, align 8
  %12 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @CVMX_USBCX_HPRT(i32 %14)
  %16 = load i32, i32* @cvmx_usbcx_hprt, align 4
  %17 = load i32, i32* @prtrst, align 4
  %18 = call i32 @USB_SET_FIELD32(i32 %15, i32 %16, i32 %17, i32 1)
  %19 = call i32 @mdelay(i32 50)
  %20 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CVMX_USBCX_HPRT(i32 %22)
  %24 = load i32, i32* @cvmx_usbcx_hprt, align 4
  %25 = load i32, i32* @prtrst, align 4
  %26 = call i32 @USB_SET_FIELD32(i32 %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %28 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @CVMX_USBCX_HPRT(i32 %30)
  %32 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %27, i32 %31)
  %33 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  ret void
}

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_HPRT(i32) #1

declare dso_local i32 @USB_SET_FIELD32(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
