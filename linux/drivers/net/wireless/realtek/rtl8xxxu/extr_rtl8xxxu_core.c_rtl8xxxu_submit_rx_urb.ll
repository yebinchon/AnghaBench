; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32, i32, i64, %struct.rtl8xxxu_fileops* }
%struct.rtl8xxxu_fileops = type { i32, i32 }
%struct.rtl8xxxu_rx_urb = type { i32 }
%struct.sk_buff = type { i32 }

@IEEE80211_MAX_FRAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtl8xxxu_rx_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*, %struct.rtl8xxxu_rx_urb*)* @rtl8xxxu_submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_submit_rx_urb(%struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_rx_urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8xxxu_priv*, align 8
  %5 = alloca %struct.rtl8xxxu_rx_urb*, align 8
  %6 = alloca %struct.rtl8xxxu_fileops*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %4, align 8
  store %struct.rtl8xxxu_rx_urb* %1, %struct.rtl8xxxu_rx_urb** %5, align 8
  %11 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %11, i32 0, i32 4
  %13 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %12, align 8
  store %struct.rtl8xxxu_fileops* %13, %struct.rtl8xxxu_fileops** %6, align 8
  %14 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %6, align 8
  %15 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %18 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %6, align 8
  %23 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %6, align 8
  %28 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %39

37:                                               ; preds = %21, %2
  %38 = load i32, i32* @IEEE80211_MAX_FRAME_LEN, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sk_buff* @__netdev_alloc_skb(i32* null, i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %86

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memset(i32 %51, i32 0, i32 %52)
  %54 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %55 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %54, i32 0, i32 0
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %57 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %60 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @rtl8xxxu_rx_complete, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @usb_fill_bulk_urb(i32* %55, i32 %58, i32 %61, i32 %64, i32 %65, i32 %66, %struct.sk_buff* %67)
  %69 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %70 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %69, i32 0, i32 0
  %71 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %72 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %71, i32 0, i32 0
  %73 = call i32 @usb_anchor_urb(i32* %70, i32* %72)
  %74 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %75 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %74, i32 0, i32 0
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @usb_submit_urb(i32* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %48
  %81 = load %struct.rtl8xxxu_rx_urb*, %struct.rtl8xxxu_rx_urb** %5, align 8
  %82 = getelementptr inbounds %struct.rtl8xxxu_rx_urb, %struct.rtl8xxxu_rx_urb* %81, i32 0, i32 0
  %83 = call i32 @usb_unanchor_urb(i32* %82)
  br label %84

84:                                               ; preds = %80, %48
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %45
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(i32*, i32*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @usb_unanchor_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
