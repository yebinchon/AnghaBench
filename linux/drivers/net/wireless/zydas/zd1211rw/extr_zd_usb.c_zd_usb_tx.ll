; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_tx }
%struct.zd_usb_tx = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ieee80211_tx_info = type { i8** }
%struct.usb_device = type { i32 }
%struct.urb = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EP_DATA_OUT = common dso_local global i32 0, align 4
@tx_urb_complete = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"error submit urb %p %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_tx(%struct.zd_usb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_usb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.zd_usb_tx*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %7, align 8
  %13 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %14 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %13)
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %16 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %15, i32 0, i32 0
  store %struct.zd_usb_tx* %16, %struct.zd_usb_tx** %10, align 8
  %17 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %10, align 8
  %18 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %17, i32 0, i32 2
  %19 = call i32 @atomic_read(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %25)
  store %struct.urb* %26, %struct.urb** %9, align 8
  %27 = load %struct.urb*, %struct.urb** %9, align 8
  %28 = icmp ne %struct.urb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %84

32:                                               ; preds = %24
  %33 = load %struct.urb*, %struct.urb** %9, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %36 = load i32, i32* @EP_DATA_OUT, align 4
  %37 = call i32 @usb_sndbulkpipe(%struct.usb_device* %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @tx_urb_complete, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @usb_fill_bulk_urb(%struct.urb* %33, %struct.usb_device* %34, i32 %37, i32 %40, i32 %43, i32 %44, %struct.sk_buff* %45)
  %47 = load i64, i64* @jiffies, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %10, align 8
  %54 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %53, i32 0, i32 0
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @skb_queue_tail(i32* %54, %struct.sk_buff* %55)
  %57 = load %struct.urb*, %struct.urb** %9, align 8
  %58 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %10, align 8
  %59 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %58, i32 0, i32 1
  %60 = call i32 @usb_anchor_urb(%struct.urb* %57, i32* %59)
  %61 = load %struct.urb*, %struct.urb** %9, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @usb_submit_urb(%struct.urb* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %32
  %67 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %68 = call i32 @zd_usb_dev(%struct.zd_usb* %67)
  %69 = load %struct.urb*, %struct.urb** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @dev_dbg_f(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.urb* %69, i32 %70)
  %72 = load %struct.urb*, %struct.urb** %9, align 8
  %73 = call i32 @usb_unanchor_urb(%struct.urb* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %10, align 8
  %76 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %75, i32 0, i32 0
  %77 = call i32 @skb_unlink(%struct.sk_buff* %74, i32* %76)
  br label %81

78:                                               ; preds = %32
  %79 = load %struct.zd_usb*, %struct.zd_usb** %4, align 8
  %80 = call i32 @tx_inc_submitted_urbs(%struct.zd_usb* %79)
  store i32 0, i32* %3, align 4
  br label %86

81:                                               ; preds = %66
  %82 = load %struct.urb*, %struct.urb** %9, align 8
  %83 = call i32 @usb_free_urb(%struct.urb* %82)
  br label %84

84:                                               ; preds = %81, %29, %21
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %78
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, %struct.urb*, i32) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @tx_inc_submitted_urbs(%struct.zd_usb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
