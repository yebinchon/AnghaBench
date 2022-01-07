; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct._adapter = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct._adapter.1*)* }
%struct._adapter.1 = type opaque
%struct.TYPE_5__ = type { i64 }

@_SUCCESS = common dso_local global i64 0, align 8
@r8712_initmac = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@video_mode = common dso_local global i64 0, align 8
@cbw40_enable = common dso_local global i32 0, align 4
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct._adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct._adapter* @netdev_priv(%struct.net_device* %5)
  store %struct._adapter* %6, %struct._adapter** %4, align 8
  %7 = load %struct._adapter*, %struct._adapter** %4, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct._adapter*, %struct._adapter** %4, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %88, label %14

14:                                               ; preds = %1
  %15 = load %struct._adapter*, %struct._adapter** %4, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct._adapter*, %struct._adapter** %4, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load %struct._adapter*, %struct._adapter** %4, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct._adapter*, %struct._adapter** %4, align 8
  %22 = call i64 @rtl871x_hal_init(%struct._adapter* %21)
  %23 = load i64, i64* @_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %119

26:                                               ; preds = %14
  %27 = load i32, i32* @r8712_initmac, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct._adapter*, %struct._adapter** %4, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i64 %32, i64 %36, i32 %37)
  br label %56

39:                                               ; preds = %26
  %40 = call i32 @msleep(i32 200)
  %41 = load %struct._adapter*, %struct._adapter** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @r8712_setMacAddr_cmd(%struct._adapter* %41, i32* %45)
  %47 = load %struct._adapter*, %struct._adapter** %4, align 8
  %48 = getelementptr inbounds %struct._adapter, %struct._adapter* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i64 %50, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %39, %29
  %57 = load %struct._adapter*, %struct._adapter** %4, align 8
  %58 = call i64 @start_drv_threads(%struct._adapter* %57)
  %59 = load i64, i64* @_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %119

62:                                               ; preds = %56
  %63 = load %struct._adapter*, %struct._adapter** %4, align 8
  %64 = getelementptr inbounds %struct._adapter, %struct._adapter* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32 (%struct._adapter.1*)*, i32 (%struct._adapter.1*)** %65, align 8
  %67 = icmp ne i32 (%struct._adapter.1*)* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %119

69:                                               ; preds = %62
  %70 = load %struct._adapter*, %struct._adapter** %4, align 8
  %71 = getelementptr inbounds %struct._adapter, %struct._adapter* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct._adapter.1*)*, i32 (%struct._adapter.1*)** %72, align 8
  %74 = load %struct._adapter*, %struct._adapter** %4, align 8
  %75 = bitcast %struct._adapter* %74 to %struct._adapter.1*
  %76 = call i32 %73(%struct._adapter.1* %75)
  br label %77

77:                                               ; preds = %69
  %78 = load %struct._adapter*, %struct._adapter** %4, align 8
  %79 = load %struct._adapter*, %struct._adapter** %4, align 8
  %80 = getelementptr inbounds %struct._adapter, %struct._adapter* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct._adapter*, %struct._adapter** %4, align 8
  %84 = getelementptr inbounds %struct._adapter, %struct._adapter* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @r8712_set_ps_mode(%struct._adapter* %78, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %77, %1
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = call i32 @netif_queue_stopped(%struct.net_device* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @netif_start_queue(%struct.net_device* %93)
  br label %98

95:                                               ; preds = %88
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i32 @netif_wake_queue(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* @video_mode, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct._adapter*, %struct._adapter** %4, align 8
  %103 = load i32, i32* @cbw40_enable, align 4
  %104 = call i32 @enable_video_mode(%struct._adapter* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load %struct._adapter*, %struct._adapter** %4, align 8
  %107 = call i32 @start_drv_timers(%struct._adapter* %106)
  %108 = load %struct._adapter*, %struct._adapter** %4, align 8
  %109 = getelementptr inbounds %struct._adapter, %struct._adapter* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %110, align 8
  %112 = load %struct._adapter*, %struct._adapter** %4, align 8
  %113 = bitcast %struct._adapter* %112 to %struct._adapter.0*
  %114 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %115 = call i32 %111(%struct._adapter.0* %113, i32 %114)
  %116 = load %struct._adapter*, %struct._adapter** %4, align 8
  %117 = getelementptr inbounds %struct._adapter, %struct._adapter* %116, i32 0, i32 3
  %118 = call i32 @mutex_unlock(i32* %117)
  store i32 0, i32* %2, align 4
  br label %129

119:                                              ; preds = %68, %61, %25
  %120 = load %struct._adapter*, %struct._adapter** %4, align 8
  %121 = getelementptr inbounds %struct._adapter, %struct._adapter* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = call i32 @netif_carrier_off(%struct.net_device* %122)
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = call i32 @netif_stop_queue(%struct.net_device* %124)
  %126 = load %struct._adapter*, %struct._adapter** %4, align 8
  %127 = getelementptr inbounds %struct._adapter, %struct._adapter* %126, i32 0, i32 3
  %128 = call i32 @mutex_unlock(i32* %127)
  store i32 -1, i32* %2, align 4
  br label %129

129:                                              ; preds = %119, %105
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rtl871x_hal_init(%struct._adapter*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r8712_setMacAddr_cmd(%struct._adapter*, i32*) #1

declare dso_local i64 @start_drv_threads(%struct._adapter*) #1

declare dso_local i32 @r8712_set_ps_mode(%struct._adapter*, i32, i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @enable_video_mode(%struct._adapter*, i32) #1

declare dso_local i32 @start_drv_timers(%struct._adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
