; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_poll_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_poll_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%union.cvmx_usbcx_grxstsph = type { i8*, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CVMX_SYNCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_hcd*)* @cvmx_usb_poll_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_usb_poll_rx_fifo(%struct.octeon_hcd* %0) #0 {
  %2 = alloca %struct.octeon_hcd*, align 8
  %3 = alloca %union.cvmx_usbcx_grxstsph, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %2, align 8
  %8 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %9 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CVMX_USBCX_GRXSTSPH(i32 %11)
  %13 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %8, i32 %12)
  %14 = bitcast %union.cvmx_usbcx_grxstsph* %3 to i8**
  store i8* %13, i8** %14, align 8
  %15 = bitcast %union.cvmx_usbcx_grxstsph* %3 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %79

20:                                               ; preds = %1
  %21 = bitcast %union.cvmx_usbcx_grxstsph* %3 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %79

26:                                               ; preds = %20
  %27 = bitcast %union.cvmx_usbcx_grxstsph* %3 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = bitcast %union.cvmx_usbcx_grxstsph* %3 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %79

36:                                               ; preds = %26
  %37 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %38 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @CVMX_USBNX_DMA0_INB_CHN0(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i64 @cvmx_read64_uint64(i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32* @cvmx_phys_to_ptr(i64 %46)
  store i32* %47, i32** %7, align 8
  %48 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %49 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @CVMX_USBNX_DMA0_INB_CHN0(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %52, 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @cvmx_write64_uint64(i64 %55, i64 %59)
  br label %61

61:                                               ; preds = %64, %36
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.octeon_hcd*, %struct.octeon_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @USB_FIFO_ADDRESS(i32 %66, i32 %69)
  %71 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %65, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 4
  store i32 %76, i32* %5, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load i32, i32* @CVMX_SYNCW, align 4
  br label %79

79:                                               ; preds = %77, %35, %25, %19
  ret void
}

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_GRXSTSPH(i32) #1

declare dso_local i64 @cvmx_read64_uint64(i64) #1

declare dso_local i64 @CVMX_USBNX_DMA0_INB_CHN0(i32) #1

declare dso_local i32* @cvmx_phys_to_ptr(i64) #1

declare dso_local i32 @cvmx_write64_uint64(i64, i64) #1

declare dso_local i32 @USB_FIFO_ADDRESS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
