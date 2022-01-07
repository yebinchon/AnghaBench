; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32, %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo }
%struct.cvmx_usb_tx_fifo = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.cvmx_usbcx_hccharx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%union.cvmx_usbcx_hcspltx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%union.cvmx_usbcx_hctsizx = type { i8* }
%struct.TYPE_8__ = type { i32 }

@CVMX_USB_DIRECTION_OUT = common dso_local global i64 0, align 8
@CVMX_USB_TRANSFER_INTERRUPT = common dso_local global i64 0, align 8
@CVMX_USB_TRANSFER_ISOCHRONOUS = common dso_local global i64 0, align 8
@MAX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*, i32)* @cvmx_usb_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_fill_tx_fifo(%struct.octeon_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_usbcx_hccharx, align 8
  %6 = alloca %union.cvmx_usbcx_hcspltx, align 8
  %7 = alloca %union.cvmx_usbcx_hctsizx, align 8
  %8 = alloca %struct.cvmx_usb_tx_fifo*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CVMX_USBCX_HCCHARX(i32 %10, i32 %13)
  %15 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %9, i32 %14)
  %16 = bitcast %union.cvmx_usbcx_hccharx* %5 to i8**
  store i8* %15, i8** %16, align 8
  %17 = bitcast %union.cvmx_usbcx_hccharx* %5 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CVMX_USB_DIRECTION_OUT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %129

23:                                               ; preds = %2
  %24 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CVMX_USBCX_HCSPLTX(i32 %25, i32 %28)
  %30 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %24, i32 %29)
  %31 = bitcast %union.cvmx_usbcx_hcspltx* %6 to i8**
  store i8* %30, i8** %31, align 8
  %32 = bitcast %union.cvmx_usbcx_hcspltx* %6 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = bitcast %union.cvmx_usbcx_hcspltx* %6 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %129

42:                                               ; preds = %36, %23
  %43 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CVMX_USBCX_HCTSIZX(i32 %44, i32 %47)
  %49 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %43, i32 %48)
  %50 = bitcast %union.cvmx_usbcx_hctsizx* %7 to i8**
  store i8* %49, i8** %50, align 8
  %51 = bitcast %union.cvmx_usbcx_hctsizx* %7 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  br label %129

56:                                               ; preds = %42
  %57 = bitcast %union.cvmx_usbcx_hccharx* %5 to %struct.TYPE_6__*
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CVMX_USB_TRANSFER_INTERRUPT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = bitcast %union.cvmx_usbcx_hccharx* %5 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CVMX_USB_TRANSFER_ISOCHRONOUS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %56
  %69 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %70 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %69, i32 0, i32 2
  store %struct.cvmx_usb_tx_fifo* %70, %struct.cvmx_usb_tx_fifo** %8, align 8
  br label %74

71:                                               ; preds = %62
  %72 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %73 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %72, i32 0, i32 1
  store %struct.cvmx_usb_tx_fifo* %73, %struct.cvmx_usb_tx_fifo** %8, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %77 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %80 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %75, i32* %83, align 4
  %84 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %85 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @CVMX_USBNX_DMA0_OUTB_CHN0(i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = mul nsw i32 %88, 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = call i32 @cvmx_read64_uint64(i64 %91)
  %93 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %94 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %97 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i32 %92, i32* %100, align 4
  %101 = bitcast %union.cvmx_usbcx_hctsizx* %7 to %struct.TYPE_8__*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 3
  %105 = ashr i32 %104, 2
  %106 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %107 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %110 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %105, i32* %113, align 4
  %114 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %115 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %119 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MAX_CHANNELS, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %74
  %124 = load %struct.cvmx_usb_tx_fifo*, %struct.cvmx_usb_tx_fifo** %8, align 8
  %125 = getelementptr inbounds %struct.cvmx_usb_tx_fifo, %struct.cvmx_usb_tx_fifo* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %123, %74
  %127 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %128 = call i32 @cvmx_usb_poll_tx_fifo(%struct.octeon_hcd* %127)
  br label %129

129:                                              ; preds = %126, %55, %41, %22
  ret void
}

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_HCCHARX(i32, i32) #1

declare dso_local i32 @CVMX_USBCX_HCSPLTX(i32, i32) #1

declare dso_local i32 @CVMX_USBCX_HCTSIZX(i32, i32) #1

declare dso_local i32 @cvmx_read64_uint64(i64) #1

declare dso_local i64 @CVMX_USBNX_DMA0_OUTB_CHN0(i32) #1

declare dso_local i32 @cvmx_usb_poll_tx_fifo(%struct.octeon_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
