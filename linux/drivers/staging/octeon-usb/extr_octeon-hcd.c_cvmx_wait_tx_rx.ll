; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_wait_tx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_wait_tx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_hcd = type { i32 }
%union.cvmx_usbcx_grstctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@octeon_get_clock_rate = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_hcd*, i32)* @cvmx_wait_tx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_wait_tx_rx(%struct.octeon_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_usbcx_grstctl, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CVMX_USBCX_GRSTCTL(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @cvmx_get_cycle()
  %14 = load i64, i64* @octeon_get_clock_rate, align 8
  %15 = trunc i64 %14 to i32
  %16 = mul nsw i32 100, %15
  %17 = sdiv i32 %16, 1000000
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %2, %48
  %20 = load %struct.octeon_hcd*, %struct.octeon_hcd** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @cvmx_usb_read_csr32(%struct.octeon_hcd* %20, i32 %21)
  %23 = bitcast %union.cvmx_usbcx_grstctl* %8 to i32*
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = bitcast %union.cvmx_usbcx_grstctl* %8 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %50

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = bitcast %union.cvmx_usbcx_grstctl* %8 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %50

41:                                               ; preds = %35, %32
  %42 = call i32 (...) @cvmx_get_cycle()
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = call i32 @__delay(i32 100)
  br label %19

50:                                               ; preds = %45, %40, %31
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @CVMX_USBCX_GRSTCTL(i32) #1

declare dso_local i32 @cvmx_get_cycle(...) #1

declare dso_local i32 @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @__delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
