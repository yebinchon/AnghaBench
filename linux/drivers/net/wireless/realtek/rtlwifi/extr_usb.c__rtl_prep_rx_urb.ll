; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_prep_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_prep_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_usb = type { i32, i32, i32 }
%struct.urb = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to usb_alloc_coherent!!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@_rtl_rx_completed = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.rtl_usb*, %struct.urb*, i32)* @_rtl_prep_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_prep_rx_urb(%struct.ieee80211_hw* %0, %struct.rtl_usb* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rtl_usb*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.rtl_usb* %1, %struct.rtl_usb** %7, align 8
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %12 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %15 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.urb*, %struct.urb** %8, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = call i8* @usb_alloc_coherent(i32 %13, i32 %16, i32 %17, i32* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %51

27:                                               ; preds = %4
  %28 = load %struct.urb*, %struct.urb** %8, align 8
  %29 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %33 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_rcvbulkpipe(i32 %34, i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %41 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @_rtl_rx_completed, align 4
  %44 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %45 = call i32 @usb_fill_bulk_urb(%struct.urb* %28, i32 %31, i32 %38, i8* %39, i32 %42, i32 %43, %struct.rtl_usb* %44)
  %46 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %47 = load %struct.urb*, %struct.urb** %8, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %27, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i8* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.rtl_usb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
