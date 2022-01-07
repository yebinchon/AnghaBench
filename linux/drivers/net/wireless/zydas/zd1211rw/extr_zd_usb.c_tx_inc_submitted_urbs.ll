; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_tx_inc_submitted_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_tx_inc_submitted_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_tx }
%struct.zd_usb_tx = type { i64, i32, i32 }

@ZD_USB_TX_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @tx_inc_submitted_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_inc_submitted_urbs(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca %struct.zd_usb_tx*, align 8
  %4 = alloca i64, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %5 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %6 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %5, i32 0, i32 0
  store %struct.zd_usb_tx* %6, %struct.zd_usb_tx** %3, align 8
  %7 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %8 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %7, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %12 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %16 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %21 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZD_USB_TX_HIGH, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %27 = call i32 @zd_usb_to_hw(%struct.zd_usb* %26)
  %28 = call i32 @ieee80211_stop_queues(i32 %27)
  %29 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %30 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %25, %19, %1
  %32 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %33 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %32, i32 0, i32 2
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @zd_usb_to_hw(%struct.zd_usb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
