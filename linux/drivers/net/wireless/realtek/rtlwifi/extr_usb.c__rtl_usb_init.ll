; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 (%struct.ieee80211_hw*)*, i32 }
%struct.rtl_usb_priv = type { i32 }
%struct.rtl_usb = type { i64, i64, i32, %struct.usb_interface* }
%struct.usb_interface = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"USB EP(0x%02x), MaxPacketSize=%d, Interval=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Too few input end points found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"No output end points found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_usb_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_usb_priv*, align 8
  %6 = alloca %struct.rtl_usb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw* %14)
  store %struct.rtl_usb_priv* %15, %struct.rtl_usb_priv** %5, align 8
  %16 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %5, align 8
  %17 = call %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv* %16)
  store %struct.rtl_usb* %17, %struct.rtl_usb** %6, align 8
  %18 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %19 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %18, i32 0, i32 3
  %20 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  store %struct.usb_interface* %20, %struct.usb_interface** %9, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %28 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %76, %1
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %43, %struct.usb_endpoint_descriptor** %11, align 8
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %45 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %49 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %62

52:                                               ; preds = %35
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %54 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %58 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %64 = load i32, i32* @COMP_INIT, align 4
  %65 = load i32, i32* @DBG_DMESG, align 4
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %70 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %73 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %31

79:                                               ; preds = %31
  %80 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %81 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %82, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %128

95:                                               ; preds = %79
  %96 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %97 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %128

104:                                              ; preds = %95
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %106 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %110, align 8
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = call i32 %111(%struct.ieee80211_hw* %112)
  store i32 %113, i32* %7, align 4
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %122 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %124 = call i32 @_rtl_usb_init_tx(%struct.ieee80211_hw* %123)
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %126 = call i32 @_rtl_usb_init_rx(%struct.ieee80211_hw* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %104, %100, %91
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_rtl_usb_init_tx(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_usb_init_rx(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
