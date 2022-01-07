; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_init_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_init_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.rtl_usb = type { i32*, i32*, i32, i32*, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64* }

@USB_HIGH_SPEED_BULK_SIZE = common dso_local global i32 0, align 4
@USB_FULL_SPEED_BULK_SIZE = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"USB Max Bulk-out Size=%d\0A\00", align 1
@__RTL_TXQ_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid endpoint map setting!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@_none_usb_tx_aggregate_hdl = common dso_local global i32 0, align 4
@RTL_USB_MAX_EP_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl_usb_init_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_usb_init_tx(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_usb*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_usb* @rtl_usbdev(i32 %11)
  store %struct.rtl_usb* %12, %struct.rtl_usb** %6, align 8
  %13 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_HIGH_SPEED_USB(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @USB_HIGH_SPEED_BULK_SIZE, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @USB_FULL_SPEED_BULK_SIZE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %25 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = load i32, i32* @COMP_INIT, align 4
  %28 = load i32, i32* @DBG_DMESG, align 4
  %29 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %55, %22
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @__RTL_TXQ_NUM, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %37
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %49 = load i32, i32* @COMP_INIT, align 4
  %50 = load i32, i32* @DBG_DMESG, align 4
  %51 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %122

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %67 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %76 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %58
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  br label %94

93:                                               ; preds = %58
  br label %94

94:                                               ; preds = %93, %85
  %95 = phi i32* [ %92, %85 ], [ @_none_usb_tx_aggregate_hdl, %93 ]
  %96 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %97 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  %98 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %99 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %98, i32 0, i32 2
  %100 = call i32 @init_usb_anchor(i32* %99)
  store i64 0, i64* %4, align 8
  br label %101

101:                                              ; preds = %118, %94
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @RTL_USB_MAX_EP_NUM, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %107 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i32 @skb_queue_head_init(i32* %110)
  %112 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %113 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @init_usb_anchor(i32* %116)
  br label %118

118:                                              ; preds = %105
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %101

121:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %47
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_HIGH_SPEED_USB(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
