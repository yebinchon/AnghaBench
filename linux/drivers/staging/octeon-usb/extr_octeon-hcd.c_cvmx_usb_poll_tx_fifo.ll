; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_poll_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_poll_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%union.cvmx_usbcx_hptxsts = type { i8* }
%union.cvmx_usbcx_gnptxsts = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@cvmx_usbcx_gintmsk = common dso_local global i32 0, align 4
@ptxfempmsk = common dso_local global i32 0, align 4
@nptxfempmsk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*)* @cvmx_usb_poll_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_poll_tx_fifo(%struct.octeon_hcd* %0) #0 {
  %2 = alloca %struct.octeon_hcd*, align 8
  %3 = alloca %union.cvmx_usbcx_hptxsts, align 8
  %4 = alloca %union.cvmx_usbcx_gnptxsts, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %2, align 8
  %5 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %8, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %16 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CVMX_USBCX_HPTXSTS(i32 %18)
  %20 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %15, i32 %19)
  %21 = bitcast %union.cvmx_usbcx_hptxsts* %3 to i8**
  store i8* %20, i8** %21, align 8
  %22 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %23 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %23, i32 0, i32 2
  %25 = bitcast %union.cvmx_usbcx_hptxsts* %3 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @cvmx_usb_fill_tx_hw(%struct.octeon_hcd* %22, %struct.TYPE_6__* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %14
  %31 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CVMX_USBCX_GINTMSK(i32 %33)
  %35 = load i32, i32* @cvmx_usbcx_gintmsk, align 4
  %36 = load i32, i32* @ptxfempmsk, align 4
  %37 = call i32 @USB_SET_FIELD32(i32 %34, i32 %35, i32 %36, i32 1)
  br label %46

38:                                               ; preds = %14
  %39 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %40 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @CVMX_USBCX_GINTMSK(i32 %41)
  %43 = load i32, i32* @cvmx_usbcx_gintmsk, align 4
  %44 = load i32, i32* @ptxfempmsk, align 4
  %45 = call i32 @USB_SET_FIELD32(i32 %42, i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %38, %30
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %49 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %47
  %58 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %59 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %60 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CVMX_USBCX_GNPTXSTS(i32 %61)
  %63 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %58, i32 %62)
  %64 = bitcast %union.cvmx_usbcx_gnptxsts* %4 to i8**
  store i8* %63, i8** %64, align 8
  %65 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %66 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %67 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %66, i32 0, i32 1
  %68 = bitcast %union.cvmx_usbcx_gnptxsts* %4 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @cvmx_usb_fill_tx_hw(%struct.octeon_hcd* %65, %struct.TYPE_6__* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %57
  %74 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %75 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @CVMX_USBCX_GINTMSK(i32 %76)
  %78 = load i32, i32* @cvmx_usbcx_gintmsk, align 4
  %79 = load i32, i32* @nptxfempmsk, align 4
  %80 = call i32 @USB_SET_FIELD32(i32 %77, i32 %78, i32 %79, i32 1)
  br label %89

81:                                               ; preds = %57
  %82 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %83 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @CVMX_USBCX_GINTMSK(i32 %84)
  %86 = load i32, i32* @cvmx_usbcx_gintmsk, align 4
  %87 = load i32, i32* @nptxfempmsk, align 4
  %88 = call i32 @USB_SET_FIELD32(i32 %85, i32 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %81, %73
  br label %90

90:                                               ; preds = %89, %47
  ret void
}

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_HPTXSTS(i32) #1

declare dso_local i64 @cvmx_usb_fill_tx_hw(%struct.octeon_hcd*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @USB_SET_FIELD32(i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_USBCX_GINTMSK(i32) #1

declare dso_local i32 @CVMX_USBCX_GNPTXSTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
