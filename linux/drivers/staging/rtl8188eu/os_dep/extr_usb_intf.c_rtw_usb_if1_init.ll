; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_usb_if1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_usb_if1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__, %struct.net_device*, i32, %struct.dvobj_priv* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i32 }
%struct.dvobj_priv = type { %struct.TYPE_6__*, %struct.adapter* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { i32, i32 }
%struct.usb_device_id = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize monitor interface\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for HAL data\0A\00", align 1
@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Initialize driver software resource Failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"can't get autopm:\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"MAC Address from pnetdev->dev_addr =  %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"bDriverStopped:%d, bSurpriseRemoved:%d, bup:%d, hw_init_completed:%d\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adapter* (%struct.dvobj_priv*, %struct.usb_interface*, %struct.usb_device_id*)* @rtw_usb_if1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adapter* @rtw_usb_if1_init(%struct.dvobj_priv* %0, %struct.usb_interface* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca %struct.dvobj_priv*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device_id*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %6, align 8
  store %struct.adapter* null, %struct.adapter** %7, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %11 = load i32, i32* @_FAIL, align 4
  store i32 %11, i32* %10, align 4
  %12 = call %struct.adapter* @vzalloc(i32 72)
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = icmp ne %struct.adapter* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %160

16:                                               ; preds = %3
  %17 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %18 = load %struct.adapter*, %struct.adapter** %7, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 10
  store %struct.dvobj_priv* %17, %struct.dvobj_priv** %19, align 8
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %22 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %21, i32 0, i32 1
  store %struct.adapter* %20, %struct.adapter** %22, align 8
  %23 = load %struct.adapter*, %struct.adapter** %7, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 9
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.adapter*, %struct.adapter** %7, align 8
  %29 = call %struct.net_device* @rtw_init_netdev(%struct.adapter* %28)
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  br label %145

33:                                               ; preds = %16
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %36 = call i32 @dvobj_to_dev(%struct.dvobj_priv* %35)
  %37 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = call %struct.adapter* @rtw_netdev_priv(%struct.net_device* %38)
  store %struct.adapter* %39, %struct.adapter** %7, align 8
  %40 = load %struct.adapter*, %struct.adapter** %7, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = call %struct.net_device* (...) @rtl88eu_mon_init()
  store %struct.net_device* %46, %struct.net_device** %9, align 8
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = call i32 @netdev_warn(%struct.net_device* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = load %struct.adapter*, %struct.adapter** %7, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 8
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  br label %56

56:                                               ; preds = %52, %33
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @kzalloc(i32 4, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.adapter*, %struct.adapter** %7, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = call i32 @DBG_88E(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %145

67:                                               ; preds = %56
  %68 = load %struct.adapter*, %struct.adapter** %7, align 8
  %69 = call i32 @rtw_hal_read_chip_version(%struct.adapter* %68)
  %70 = load %struct.adapter*, %struct.adapter** %7, align 8
  %71 = call i32 @rtw_hal_chip_configure(%struct.adapter* %70)
  %72 = load %struct.adapter*, %struct.adapter** %7, align 8
  %73 = call i32 @rtw_hal_read_chip_info(%struct.adapter* %72)
  %74 = load %struct.adapter*, %struct.adapter** %7, align 8
  %75 = call i32 @rtw_init_drv_sw(%struct.adapter* %74)
  %76 = load i32, i32* @_FAIL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load i32, i32* @_module_hci_intfs_c_, align 4
  %80 = load i32, i32* @_drv_err_, align 4
  %81 = call i32 @RT_TRACE(i32 %79, i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %135

82:                                               ; preds = %67
  %83 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %84 = call i64 @usb_autopm_get_interface(%struct.usb_interface* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = load %struct.adapter*, %struct.adapter** %7, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @rtw_init_netdev_name(%struct.net_device* %89, i32 %93)
  %95 = load %struct.adapter*, %struct.adapter** %7, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rtw_macaddr_cfg(i32 %98)
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.adapter*, %struct.adapter** %7, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcpy(i32 %102, i32 %106, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %8, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %8, align 8
  %114 = call i64 @register_netdev(%struct.net_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %88
  %117 = load i32, i32* @_module_hci_intfs_c_, align 4
  %118 = load i32, i32* @_drv_err_, align 4
  %119 = call i32 @RT_TRACE(i32 %117, i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %135

120:                                              ; preds = %88
  %121 = load %struct.adapter*, %struct.adapter** %7, align 8
  %122 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.adapter*, %struct.adapter** %7, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.adapter*, %struct.adapter** %7, align 8
  %128 = getelementptr inbounds %struct.adapter, %struct.adapter* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.adapter*, %struct.adapter** %7, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %123, i32 %126, i32 %129, i32 %132)
  %134 = load i32, i32* @_SUCCESS, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %120, %116, %78
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @_SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.adapter*, %struct.adapter** %7, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @kfree(i32 %142)
  br label %144

144:                                              ; preds = %139, %135
  br label %145

145:                                              ; preds = %144, %65, %32
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @_SUCCESS, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load %struct.net_device*, %struct.net_device** %8, align 8
  %151 = icmp ne %struct.net_device* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.net_device*, %struct.net_device** %8, align 8
  %154 = call i32 @rtw_free_netdev(%struct.net_device* %153)
  br label %158

155:                                              ; preds = %149
  %156 = load %struct.adapter*, %struct.adapter** %7, align 8
  %157 = call i32 @vfree(%struct.adapter* %156)
  br label %158

158:                                              ; preds = %155, %152
  store %struct.adapter* null, %struct.adapter** %7, align 8
  br label %159

159:                                              ; preds = %158, %145
  br label %160

160:                                              ; preds = %159, %15
  %161 = load %struct.adapter*, %struct.adapter** %7, align 8
  ret %struct.adapter* %161
}

declare dso_local %struct.adapter* @vzalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.net_device* @rtw_init_netdev(%struct.adapter*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @dvobj_to_dev(%struct.dvobj_priv*) #1

declare dso_local %struct.adapter* @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtl88eu_mon_init(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @rtw_hal_read_chip_version(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_chip_configure(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_read_chip_info(%struct.adapter*) #1

declare dso_local i32 @rtw_init_drv_sw(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @usb_autopm_get_interface(%struct.usb_interface*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @rtw_init_netdev_name(%struct.net_device*, i32) #1

declare dso_local i32 @rtw_macaddr_cfg(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @rtw_free_netdev(%struct.net_device*) #1

declare dso_local i32 @vfree(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
