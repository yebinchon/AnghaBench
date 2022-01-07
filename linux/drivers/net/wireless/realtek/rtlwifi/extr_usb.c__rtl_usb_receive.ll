; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.urb = type { i32 }
%struct.rtl_usb = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to prep_rx_urb!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl_usb_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_usb_receive(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_usb* @rtl_usbdev(i32 %9)
  store %struct.rtl_usb* %10, %struct.rtl_usb** %7, align 8
  %11 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %12 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %18 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 1600
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %63, %1
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %32)
  store %struct.urb* %33, %struct.urb** %4, align 8
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = icmp ne %struct.urb* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %67

37:                                               ; preds = %29
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %40 = load %struct.urb*, %struct.urb** %4, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @_rtl_prep_rx_urb(%struct.ieee80211_hw* %38, %struct.rtl_usb* %39, %struct.urb* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.urb*, %struct.urb** %4, align 8
  %48 = call i32 @usb_free_urb(%struct.urb* %47)
  br label %67

49:                                               ; preds = %37
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %52 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %51, i32 0, i32 2
  %53 = call i32 @usb_anchor_urb(%struct.urb* %50, i32* %52)
  %54 = load %struct.urb*, %struct.urb** %4, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @usb_submit_urb(%struct.urb* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %67

60:                                               ; preds = %49
  %61 = load %struct.urb*, %struct.urb** %4, align 8
  %62 = call i32 @usb_free_urb(%struct.urb* %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %23

66:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %74

67:                                               ; preds = %59, %45, %36
  %68 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %69 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %68, i32 0, i32 2
  %70 = call i32 @usb_kill_anchored_urbs(i32* %69)
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %72 = call i32 @_rtl_usb_cleanup_rx(%struct.ieee80211_hw* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %66
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @_rtl_prep_rx_urb(%struct.ieee80211_hw*, %struct.rtl_usb*, %struct.urb*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @_rtl_usb_cleanup_rx(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
