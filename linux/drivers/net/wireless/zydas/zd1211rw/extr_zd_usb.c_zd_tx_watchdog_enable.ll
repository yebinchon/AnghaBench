; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_tx_watchdog_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_tx_watchdog_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_tx }
%struct.zd_usb_tx = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@zd_workqueue = common dso_local global i32 0, align 4
@ZD_TX_WATCHDOG_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_tx_watchdog_enable(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca %struct.zd_usb_tx*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %4 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %5 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %4, i32 0, i32 0
  store %struct.zd_usb_tx* %5, %struct.zd_usb_tx** %3, align 8
  %6 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %7 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %12 = call i32 @zd_usb_dev(%struct.zd_usb* %11)
  %13 = call i32 @dev_dbg_f(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @zd_workqueue, align 4
  %15 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %16 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %15, i32 0, i32 1
  %17 = load i32, i32* @ZD_TX_WATCHDOG_INTERVAL, align 4
  %18 = call i32 @queue_delayed_work(i32 %14, i32* %16, i32 %17)
  %19 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %20 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
