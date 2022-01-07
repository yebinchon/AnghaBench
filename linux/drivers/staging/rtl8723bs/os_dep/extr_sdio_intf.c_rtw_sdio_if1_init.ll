; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_intf.c_rtw_sdio_if1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_intf.c_rtw_sdio_if1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_4__, i32*, i32*, i32*, i32*, i32*, i32*, i64, %struct.dvobj_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.dvobj_priv = type { %struct.adapter*, %struct.adapter*, %struct.sdio_data }
%struct.sdio_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.net_device = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@sd_intf_start = common dso_local global i32 0, align 4
@sd_intf_stop = common dso_local global i32 0, align 4
@sdio_init = common dso_local global i32 0, align 4
@sdio_deinit = common dso_local global i32 0, align 4
@sdio_alloc_irq = common dso_local global i32 0, align 4
@sdio_free_irq = common dso_local global i32 0, align 4
@sdio_set_intf_ops = common dso_local global i32 0, align 4
@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rtw_drv_init: Can't init io_priv\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"rtw_drv_init: Initialize driver software resource Failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"bDriverStopped:%d, bSurpriseRemoved:%d, bup:%d, hw_init_completed:%d\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adapter* (%struct.dvobj_priv*, %struct.sdio_device_id*)* @rtw_sdio_if1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adapter* @rtw_sdio_if1_init(%struct.dvobj_priv* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca %struct.dvobj_priv*, align 8
  %4 = alloca %struct.sdio_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sdio_data*, align 8
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %3, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %4, align 8
  %9 = load i32, i32* @_FAIL, align 4
  store i32 %9, i32* %5, align 4
  store %struct.adapter* null, %struct.adapter** %7, align 8
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %10, i32 0, i32 2
  store %struct.sdio_data* %11, %struct.sdio_data** %8, align 8
  %12 = call %struct.adapter* @vzalloc(i32 96)
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = icmp eq %struct.adapter* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %157

16:                                               ; preds = %2
  %17 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %18 = load %struct.adapter*, %struct.adapter** %7, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 14
  store %struct.dvobj_priv* %17, %struct.dvobj_priv** %19, align 8
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %22 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %21, i32 0, i32 1
  store %struct.adapter* %20, %struct.adapter** %22, align 8
  %23 = load %struct.adapter*, %struct.adapter** %7, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %27 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %26, i32 0, i32 0
  store %struct.adapter* %25, %struct.adapter** %27, align 8
  %28 = load %struct.adapter*, %struct.adapter** %7, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 13
  store i64 0, i64* %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %7, align 8
  %31 = call %struct.net_device* @rtw_init_netdev(%struct.adapter* %30)
  store %struct.net_device* %31, %struct.net_device** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %16
  br label %141

35:                                               ; preds = %16
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %38 = call i32 @dvobj_to_dev(%struct.dvobj_priv* %37)
  %39 = call i32 @SET_NETDEV_DEV(%struct.net_device* %36, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call %struct.adapter* @rtw_netdev_priv(%struct.net_device* %40)
  store %struct.adapter* %41, %struct.adapter** %7, align 8
  %42 = load %struct.adapter*, %struct.adapter** %7, align 8
  %43 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %44 = call i32 @dvobj_to_dev(%struct.dvobj_priv* %43)
  %45 = call i32 @rtw_wdev_alloc(%struct.adapter* %42, i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %7, align 8
  %47 = call i32 @rtw_set_hal_ops(%struct.adapter* %46)
  %48 = load %struct.adapter*, %struct.adapter** %7, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 12
  store i32* @sd_intf_start, i32** %49, align 8
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 11
  store i32* @sd_intf_stop, i32** %51, align 8
  %52 = load %struct.adapter*, %struct.adapter** %7, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 10
  store i32* @sdio_init, i32** %53, align 8
  %54 = load %struct.adapter*, %struct.adapter** %7, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 9
  store i32* @sdio_deinit, i32** %55, align 8
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 8
  store i32* @sdio_alloc_irq, i32** %57, align 8
  %58 = load %struct.adapter*, %struct.adapter** %7, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 7
  store i32* @sdio_free_irq, i32** %59, align 8
  %60 = load %struct.adapter*, %struct.adapter** %7, align 8
  %61 = load i32, i32* @sdio_set_intf_ops, align 4
  %62 = call i32 @rtw_init_io_priv(%struct.adapter* %60, i32 %61)
  %63 = load i32, i32* @_FAIL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %35
  %66 = load i32, i32* @_module_hci_intfs_c_, align 4
  %67 = load i32, i32* @_drv_err_, align 4
  %68 = call i32 @RT_TRACE(i32 %66, i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %113

69:                                               ; preds = %35
  %70 = load %struct.adapter*, %struct.adapter** %7, align 8
  %71 = call i32 @rtw_hal_read_chip_version(%struct.adapter* %70)
  %72 = load %struct.adapter*, %struct.adapter** %7, align 8
  %73 = call i32 @rtw_hal_chip_configure(%struct.adapter* %72)
  %74 = load %struct.adapter*, %struct.adapter** %7, align 8
  %75 = bitcast %struct.adapter* %74 to i8*
  %76 = call i32 @hal_btcoex_Initialize(i8* %75)
  %77 = load %struct.adapter*, %struct.adapter** %7, align 8
  %78 = call i32 @rtw_hal_read_chip_info(%struct.adapter* %77)
  %79 = load %struct.adapter*, %struct.adapter** %7, align 8
  %80 = call i32 @rtw_init_drv_sw(%struct.adapter* %79)
  %81 = load i32, i32* @_FAIL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load i32, i32* @_module_hci_intfs_c_, align 4
  %85 = load i32, i32* @_drv_err_, align 4
  %86 = call i32 @RT_TRACE(i32 %84, i32 %85, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %113

87:                                               ; preds = %69
  %88 = load %struct.sdio_data*, %struct.sdio_data** %8, align 8
  %89 = getelementptr inbounds %struct.sdio_data, %struct.sdio_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.adapter*, %struct.adapter** %7, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rtw_macaddr_cfg(i32* %91, i32 %95)
  %97 = load %struct.adapter*, %struct.adapter** %7, align 8
  %98 = call i32 @rtw_hal_disable_interrupt(%struct.adapter* %97)
  %99 = load %struct.adapter*, %struct.adapter** %7, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.adapter*, %struct.adapter** %7, align 8
  %103 = getelementptr inbounds %struct.adapter, %struct.adapter* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.adapter*, %struct.adapter** %7, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.adapter*, %struct.adapter** %7, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @DBG_871X(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load i32, i32* @_SUCCESS, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %87, %83, %65
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @_SUCCESS, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load %struct.adapter*, %struct.adapter** %7, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.adapter*, %struct.adapter** %7, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @kfree(i64 %125)
  br label %127

127:                                              ; preds = %122, %117, %113
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.adapter*, %struct.adapter** %7, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @rtw_wdev_unregister(i32 %134)
  %136 = load %struct.adapter*, %struct.adapter** %7, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rtw_wdev_free(i32 %138)
  br label %140

140:                                              ; preds = %131, %127
  br label %141

141:                                              ; preds = %140, %34
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = icmp ne %struct.net_device* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.net_device*, %struct.net_device** %6, align 8
  %150 = call i32 @rtw_free_netdev(%struct.net_device* %149)
  br label %155

151:                                              ; preds = %145
  %152 = load %struct.adapter*, %struct.adapter** %7, align 8
  %153 = bitcast %struct.adapter* %152 to i32*
  %154 = call i32 @vfree(i32* %153)
  br label %155

155:                                              ; preds = %151, %148
  store %struct.adapter* null, %struct.adapter** %7, align 8
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %15
  %158 = load %struct.adapter*, %struct.adapter** %7, align 8
  ret %struct.adapter* %158
}

declare dso_local %struct.adapter* @vzalloc(i32) #1

declare dso_local %struct.net_device* @rtw_init_netdev(%struct.adapter*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @dvobj_to_dev(%struct.dvobj_priv*) #1

declare dso_local %struct.adapter* @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtw_wdev_alloc(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_set_hal_ops(%struct.adapter*) #1

declare dso_local i32 @rtw_init_io_priv(%struct.adapter*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_hal_read_chip_version(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_chip_configure(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_Initialize(i8*) #1

declare dso_local i32 @rtw_hal_read_chip_info(%struct.adapter*) #1

declare dso_local i32 @rtw_init_drv_sw(%struct.adapter*) #1

declare dso_local i32 @rtw_macaddr_cfg(i32*, i32) #1

declare dso_local i32 @rtw_hal_disable_interrupt(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @rtw_wdev_unregister(i32) #1

declare dso_local i32 @rtw_wdev_free(i32) #1

declare dso_local i32 @rtw_free_netdev(%struct.net_device*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
