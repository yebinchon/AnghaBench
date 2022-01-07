; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_fifo_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_fifo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%union.cvmx_usbcx_ghwcfg3 = type { i8* }
%union.cvmx_usbcx_gnptxfsiz = type { i8* }
%union.cvmx_usbcx_hptxfsiz = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@cvmx_usbcx_grxfsiz = common dso_local global i32 0, align 4
@rxfdep = common dso_local global i32 0, align 4
@cvmx_usbcx_grstctl = common dso_local global i32 0, align 4
@txfnum = common dso_local global i32 0, align 4
@txfflsh = common dso_local global i32 0, align 4
@rxfflsh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*)* @cvmx_fifo_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_fifo_setup(%struct.octeon_hcd* %0) #0 {
  %2 = alloca %struct.octeon_hcd*, align 8
  %3 = alloca %union.cvmx_usbcx_ghwcfg3, align 8
  %4 = alloca %union.cvmx_usbcx_gnptxfsiz, align 8
  %5 = alloca %union.cvmx_usbcx_hptxfsiz, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %2, align 8
  %6 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %7 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CVMX_USBCX_GHWCFG3(i32 %9)
  %11 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %6, i32 %10)
  %12 = bitcast %union.cvmx_usbcx_ghwcfg3* %3 to i8**
  store i8* %11, i8** %12, align 8
  %13 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CVMX_USBCX_GRXFSIZ(i32 %15)
  %17 = load i32, i32* @cvmx_usbcx_grxfsiz, align 4
  %18 = load i32, i32* @rxfdep, align 4
  %19 = bitcast %union.cvmx_usbcx_ghwcfg3* %3 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 4
  %23 = call i32 @USB_SET_FIELD32(i32 %16, i32 %17, i32 %18, i32 %22)
  %24 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %25 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CVMX_USBCX_GNPTXFSIZ(i32 %27)
  %29 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %24, i32 %28)
  %30 = bitcast %union.cvmx_usbcx_gnptxfsiz* %4 to i8**
  store i8* %29, i8** %30, align 8
  %31 = bitcast %union.cvmx_usbcx_ghwcfg3* %3 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 2
  %35 = bitcast %union.cvmx_usbcx_gnptxfsiz* %4 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = bitcast %union.cvmx_usbcx_ghwcfg3* %3 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 4
  %41 = bitcast %union.cvmx_usbcx_gnptxfsiz* %4 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %44 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %45 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CVMX_USBCX_GNPTXFSIZ(i32 %46)
  %48 = bitcast %union.cvmx_usbcx_gnptxfsiz* %4 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %43, i32 %47, i8* %49)
  %51 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %52 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CVMX_USBCX_HPTXFSIZ(i32 %54)
  %56 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %51, i32 %55)
  %57 = bitcast %union.cvmx_usbcx_hptxfsiz* %5 to i8**
  store i8* %56, i8** %57, align 8
  %58 = bitcast %union.cvmx_usbcx_ghwcfg3* %3 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 4
  %62 = bitcast %union.cvmx_usbcx_hptxfsiz* %5 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = bitcast %union.cvmx_usbcx_ghwcfg3* %3 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 3, %66
  %68 = sdiv i32 %67, 4
  %69 = bitcast %union.cvmx_usbcx_hptxfsiz* %5 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %72 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %73 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CVMX_USBCX_HPTXFSIZ(i32 %74)
  %76 = bitcast %union.cvmx_usbcx_hptxfsiz* %5 to i8**
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %71, i32 %75, i8* %77)
  %79 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %80 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CVMX_USBCX_GRSTCTL(i32 %81)
  %83 = load i32, i32* @cvmx_usbcx_grstctl, align 4
  %84 = load i32, i32* @txfnum, align 4
  %85 = call i32 @USB_SET_FIELD32(i32 %82, i32 %83, i32 %84, i32 16)
  %86 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %87 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CVMX_USBCX_GRSTCTL(i32 %88)
  %90 = load i32, i32* @cvmx_usbcx_grstctl, align 4
  %91 = load i32, i32* @txfflsh, align 4
  %92 = call i32 @USB_SET_FIELD32(i32 %89, i32 %90, i32 %91, i32 1)
  %93 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %94 = call i32 @cvmx_wait_tx_rx(%struct.octeon_hcd* %93, i32 0)
  %95 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %96 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CVMX_USBCX_GRSTCTL(i32 %97)
  %99 = load i32, i32* @cvmx_usbcx_grstctl, align 4
  %100 = load i32, i32* @rxfflsh, align 4
  %101 = call i32 @USB_SET_FIELD32(i32 %98, i32 %99, i32 %100, i32 1)
  %102 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %103 = call i32 @cvmx_wait_tx_rx(%struct.octeon_hcd* %102, i32 1)
  ret void
}

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_GHWCFG3(i32) #1

declare dso_local i32 @USB_SET_FIELD32(i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_USBCX_GRXFSIZ(i32) #1

declare dso_local i32 @CVMX_USBCX_GNPTXFSIZ(i32) #1

declare dso_local i32 @cvmx_usb_write_csr32(%struct.octeon_hcd*, i32, i8*) #1

declare dso_local i32 @CVMX_USBCX_HPTXFSIZ(i32) #1

declare dso_local i32 @CVMX_USBCX_GRSTCTL(i32) #1

declare dso_local i32 @cvmx_wait_tx_rx(%struct.octeon_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
