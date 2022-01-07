; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_init_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.rtl_usb_priv = type { i32 }
%struct.rtl_usb = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"rx_max_size %d, rx_urb_num %d, in_ep %d\0A\00", align 1
@_rtl_rx_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl_usb_init_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_usb_init_rx(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_usb_priv*, align 8
  %5 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw* %8)
  store %struct.rtl_usb_priv* %9, %struct.rtl_usb_priv** %4, align 8
  %10 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %4, align 8
  %11 = call %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv* %10)
  store %struct.rtl_usb* %11, %struct.rtl_usb** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %58 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %61 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %64 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %68 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %67, i32 0, i32 3
  %69 = call i32 @init_usb_anchor(i32* %68)
  %70 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %71 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %70, i32 0, i32 2
  %72 = call i32 @init_usb_anchor(i32* %71)
  %73 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %74 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %73, i32 0, i32 1
  %75 = call i32 @skb_queue_head_init(i32* %74)
  %76 = load i32, i32* @_rtl_rx_work, align 4
  %77 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %81 = ptrtoint %struct.rtl_usb* %80 to i64
  %82 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %83 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  ret i32 0
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
