; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.rtl_mac = type { i32 }
%struct.rtl_usb = type { i32 }

@RTL_STATUS_INTERFACE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_usb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_usb* @rtl_usbdev(i32 %15)
  store %struct.rtl_usb* %16, %struct.rtl_usb** %6, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = icmp ne %struct.rtl_priv* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 4
  %27 = call i32 @wait_for_completion(i32* %26)
  %28 = load i32, i32* @RTL_STATUS_INTERFACE_START, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 3
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %38 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %37)
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %51

41:                                               ; preds = %24
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = call i32 @rtl_deinit_deferred_work(%struct.ieee80211_hw* %42, i32 0)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %47, align 8
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = call i32 %48(%struct.ieee80211_hw* %49)
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %53 = call i32 @rtl_usb_deinit(%struct.ieee80211_hw* %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %55 = call i32 @rtl_deinit_core(%struct.ieee80211_hw* %54)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kfree(i32 %58)
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %65, align 8
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = call i32 %66(%struct.ieee80211_hw* %67)
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %74, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %77 = call i32 %75(%struct.ieee80211_hw* %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = call i32 @_rtl_usb_io_handler_release(%struct.ieee80211_hw* %78)
  %80 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %81 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usb_put_dev(i32 %82)
  %84 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %85 = call i32 @usb_set_intfdata(%struct.usb_interface* %84, i32* null)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %87 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %86)
  br label %88

88:                                               ; preds = %51, %23
  ret void
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_deinit_deferred_work(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_usb_deinit(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_deinit_core(%struct.ieee80211_hw*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @_rtl_usb_io_handler_release(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
