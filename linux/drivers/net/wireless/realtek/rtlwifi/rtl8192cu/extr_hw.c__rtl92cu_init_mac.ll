; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_hal = type { i32 }
%struct.rtl_usb_priv = type { i32 }
%struct.rtl_usb = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to init power on!\0A\00", align 1
@TX_PAGE_BOUNDARY = common dso_local global i32 0, align 4
@WMM_CHIP_B_TX_PAGE_BOUNDARY = common dso_local global i32 0, align 4
@WMM_CHIP_A_TX_PAGE_BOUNDARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to init LLT Table!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTL92C_DRIVER_INFO_SIZE = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92cu_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92cu_init_mac(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rtl_usb_priv*, align 8
  %7 = alloca %struct.rtl_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %5, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = call %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw* %18)
  store %struct.rtl_usb_priv* %19, %struct.rtl_usb_priv** %6, align 8
  %20 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %6, align 8
  %21 = call %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv* %20)
  store %struct.rtl_usb* %21, %struct.rtl_usb** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %23 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = call i32 @_rtl92cu_init_power_on(%struct.ieee80211_hw* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %115

35:                                               ; preds = %1
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @TX_PAGE_BOUNDARY, align 4
  store i32 %39, i32* %9, align 4
  br label %52

40:                                               ; preds = %35
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IS_NORMAL_CHIP(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @WMM_CHIP_B_TX_PAGE_BOUNDARY, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @WMM_CHIP_A_TX_PAGE_BOUNDARY, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %38
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rtl92c_init_llt_table(%struct.ieee80211_hw* %53, i32 %54)
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %115

61:                                               ; preds = %52
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @_rtl92cu_init_queue_reserved_page(%struct.ieee80211_hw* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @_rtl92c_init_trx_buffer(%struct.ieee80211_hw* %67, i32 %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @_rtl92cu_init_queue_priority(%struct.ieee80211_hw* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i32, i32* @RTL92C_DRIVER_INFO_SIZE, align 4
  %77 = call i32 @rtl92c_init_driver_info_size(%struct.ieee80211_hw* %75, i32 %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = call i32 @rtl92c_init_interrupt(%struct.ieee80211_hw* %78)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %81 = call i32 @rtl92c_init_network_type(%struct.ieee80211_hw* %80)
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %83 = call i32 @_rtl92cu_init_wmac_setting(%struct.ieee80211_hw* %82)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = call i32 @rtl92c_init_adaptive_ctrl(%struct.ieee80211_hw* %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %87 = call i32 @rtl92c_init_edca(%struct.ieee80211_hw* %86)
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = call i32 @rtl92c_init_rate_fallback(%struct.ieee80211_hw* %88)
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %91 = call i32 @rtl92c_init_retry_function(%struct.ieee80211_hw* %90)
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %97, align 8
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %101 = call i32 %98(%struct.ieee80211_hw* %99, i32 %100)
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %104 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IS_92C_SERIAL(i32 %105)
  %107 = call i32 @rtl92c_set_min_space(%struct.ieee80211_hw* %102, i32 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %109 = call i32 @_rtl92cu_init_beacon_parameters(%struct.ieee80211_hw* %108)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %111 = call i32 @rtl92c_init_ampdu_aggregation(%struct.ieee80211_hw* %110)
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = call i32 @rtl92c_init_beacon_max_error(%struct.ieee80211_hw* %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %61, %57, %32
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv*) #1

declare dso_local i32 @_rtl92cu_init_power_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @rtl92c_init_llt_table(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92cu_init_queue_reserved_page(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl92c_init_trx_buffer(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92cu_init_queue_priority(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92c_init_driver_info_size(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92c_init_interrupt(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_network_type(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92cu_init_wmac_setting(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_adaptive_ctrl(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_edca(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_rate_fallback(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_retry_function(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_set_min_space(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @_rtl92cu_init_beacon_parameters(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_ampdu_aggregation(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_init_beacon_max_error(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
