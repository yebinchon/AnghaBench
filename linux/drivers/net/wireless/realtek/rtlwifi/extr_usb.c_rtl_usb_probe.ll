; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.rtl_hal_cfg = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.ieee80211_hw*)*, i64 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.ieee80211_hw = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32, i32, %struct.TYPE_12__, %struct.rtl_hal_cfg*, i32*, %struct.TYPE_10__, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.ieee80211_hw* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.rtl_usb_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.usb_device*, %struct.usb_interface* }

@rtl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rtl_usb: ieee80211 alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RTL_USB_MAX_RX_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fill_h2c_cmd_work_callback = common dso_local global i32 0, align 4
@rtl_lps_change_work_callback = common dso_local global i32 0, align 4
@INTF_USB = common dso_local global i32 0, align 4
@rtl_usb_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't allocate sw for mac80211\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Can't init_sw_vars\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't register mac80211 hw.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RTL_STATUS_INTERFACE_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1, %struct.rtl_hal_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device_id*, align 8
  %7 = alloca %struct.rtl_hal_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.rtl_usb_priv*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %6, align 8
  store %struct.rtl_hal_cfg* %2, %struct.rtl_hal_cfg** %7, align 8
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %9, align 8
  store %struct.rtl_priv* null, %struct.rtl_priv** %10, align 8
  %13 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 88, i32* @rtl_ops)
  store %struct.ieee80211_hw* %13, %struct.ieee80211_hw** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %15 = icmp ne %struct.ieee80211_hw* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %179

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %22, align 8
  store %struct.rtl_priv* %23, %struct.rtl_priv** %10, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 10
  store %struct.ieee80211_hw* %24, %struct.ieee80211_hw** %26, align 8
  %27 = load i32, i32* @RTL_USB_MAX_RX_COUNT, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kcalloc(i32 %27, i32 4, i32 %28)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %179

39:                                               ; preds = %20
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* @rtl_fill_h2c_cmd_work_callback, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* @rtl_lps_change_work_callback, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = call i32 @init_completion(i32* %57)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %60 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %59, i32* %61)
  %63 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %64 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %63)
  store %struct.usb_device* %64, %struct.usb_device** %11, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %66 = call i32 @usb_get_dev(%struct.usb_device* %65)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %68 = call %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw* %67)
  store %struct.rtl_usb_priv* %68, %struct.rtl_usb_priv** %12, align 8
  %69 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %12, align 8
  %70 = call i32 @memset(%struct.rtl_usb_priv* %69, i32 0, i32 16)
  %71 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %72 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %12, align 8
  %73 = getelementptr inbounds %struct.rtl_usb_priv, %struct.rtl_usb_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store %struct.usb_interface* %71, %struct.usb_interface** %74, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %76 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %12, align 8
  %77 = getelementptr inbounds %struct.rtl_usb_priv, %struct.rtl_usb_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.usb_device* %75, %struct.usb_device** %78, align 8
  %79 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %81 = call i32 @usb_set_intfdata(%struct.usb_interface* %79, %struct.ieee80211_hw* %80)
  %82 = load i32, i32* @INTF_USB, align 4
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.rtl_hal_cfg*, %struct.rtl_hal_cfg** %7, align 8
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 3
  store %struct.rtl_hal_cfg* %86, %struct.rtl_hal_cfg** %88, align 8
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 4
  store i32* @rtl_usb_ops, i32** %90, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 0
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %94 = call i32 @_rtl_usb_io_handler_init(i32* %92, %struct.ieee80211_hw* %93)
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 3
  %97 = load %struct.rtl_hal_cfg*, %struct.rtl_hal_cfg** %96, align 8
  %98 = getelementptr inbounds %struct.rtl_hal_cfg, %struct.rtl_hal_cfg* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %100, align 8
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %103 = call i32 %101(%struct.ieee80211_hw* %102)
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %105 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %104, i32 0, i32 3
  %106 = load %struct.rtl_hal_cfg*, %struct.rtl_hal_cfg** %105, align 8
  %107 = getelementptr inbounds %struct.rtl_hal_cfg, %struct.rtl_hal_cfg* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %109, align 8
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %112 = call i32 %110(%struct.ieee80211_hw* %111)
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %114 = call i32 @_rtl_usb_init(%struct.ieee80211_hw* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %39
  br label %169

118:                                              ; preds = %39
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %120 = call i32 @rtl_usb_init_sw(%struct.ieee80211_hw* %119)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %122 = call i32 @rtl_init_core(%struct.ieee80211_hw* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %169

127:                                              ; preds = %118
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %129 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %128, i32 0, i32 3
  %130 = load %struct.rtl_hal_cfg*, %struct.rtl_hal_cfg** %129, align 8
  %131 = getelementptr inbounds %struct.rtl_hal_cfg, %struct.rtl_hal_cfg* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i64 (%struct.ieee80211_hw*)*, i64 (%struct.ieee80211_hw*)** %133, align 8
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %136 = call i64 %134(%struct.ieee80211_hw* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %166

140:                                              ; preds = %127
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 3
  %143 = load %struct.rtl_hal_cfg*, %struct.rtl_hal_cfg** %142, align 8
  %144 = getelementptr inbounds %struct.rtl_hal_cfg, %struct.rtl_hal_cfg* %143, i32 0, i32 0
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %146, align 8
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %149 = call i32 %147(%struct.ieee80211_hw* %148)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %151 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  br label %166

158:                                              ; preds = %140
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load i32, i32* @RTL_STATUS_INTERFACE_START, align 4
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 1
  %165 = call i32 @set_bit(i32 %162, i32* %164)
  store i32 0, i32* %4, align 4
  br label %179

166:                                              ; preds = %154, %138
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %168 = call i32 @rtl_deinit_core(%struct.ieee80211_hw* %167)
  br label %169

169:                                              ; preds = %166, %125, %117
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %171 = call i32 @_rtl_usb_io_handler_release(%struct.ieee80211_hw* %170)
  %172 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %173 = call i32 @usb_put_dev(%struct.usb_device* %172)
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 0
  %176 = call i32 @complete(i32* %175)
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %169, %158, %36, %16
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(%struct.rtl_usb_priv*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_usb_io_handler_init(i32*, %struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_usb_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_usb_init_sw(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_init_core(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rtl_deinit_core(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_usb_io_handler_release(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
