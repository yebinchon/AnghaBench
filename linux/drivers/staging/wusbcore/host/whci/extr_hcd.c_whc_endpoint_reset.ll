; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_hcd.c_whc_endpoint_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_hcd.c_whc_endpoint_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { i32, %struct.whc_qset* }
%struct.whc_qset = type { i32, i32 }
%struct.wusbhc = type { i32 }
%struct.whc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @whc_endpoint_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whc_endpoint_reset(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca %struct.whc*, align 8
  %7 = alloca %struct.whc_qset*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %9)
  store %struct.wusbhc* %10, %struct.wusbhc** %5, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %12 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %11)
  store %struct.whc* %12, %struct.whc** %6, align 8
  %13 = load %struct.whc*, %struct.whc** %6, align 8
  %14 = getelementptr inbounds %struct.whc, %struct.whc* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 1
  %19 = load %struct.whc_qset*, %struct.whc_qset** %18, align 8
  store %struct.whc_qset* %19, %struct.whc_qset** %7, align 8
  %20 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %21 = icmp ne %struct.whc_qset* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %2
  %23 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %24 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %26 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %28 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %27, i32 0, i32 0
  %29 = call i64 @usb_endpoint_xfer_bulk(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i32 0, i32 0
  %34 = call i64 @usb_endpoint_xfer_control(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31, %22
  %37 = load %struct.whc*, %struct.whc** %6, align 8
  %38 = getelementptr inbounds %struct.whc, %struct.whc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.whc*, %struct.whc** %6, align 8
  %41 = getelementptr inbounds %struct.whc, %struct.whc* %40, i32 0, i32 3
  %42 = call i32 @queue_work(i32 %39, i32* %41)
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.whc*, %struct.whc** %6, align 8
  %45 = getelementptr inbounds %struct.whc, %struct.whc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.whc*, %struct.whc** %6, align 8
  %48 = getelementptr inbounds %struct.whc, %struct.whc* %47, i32 0, i32 1
  %49 = call i32 @queue_work(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.whc*, %struct.whc** %6, align 8
  %53 = getelementptr inbounds %struct.whc, %struct.whc* %52, i32 0, i32 0
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  ret void
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
