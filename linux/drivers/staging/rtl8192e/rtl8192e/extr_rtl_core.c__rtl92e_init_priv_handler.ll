; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init_priv_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init_priv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@_rtl92e_hard_start_xmit = common dso_local global i32 0, align 4
@_rtl92e_set_chan = common dso_local global i32 0, align 4
@_rtl92e_hard_data_xmit = common dso_local global i32 0, align 4
@_rtl92e_check_nic_enough_desc = common dso_local global i32 0, align 4
@_rtl92e_handle_assoc_response = common dso_local global i32 0, align 4
@_rtl92e_handle_beacon = common dso_local global i32 0, align 4
@rtl92e_set_wireless_mode = common dso_local global i32 0, align 4
@rtl92e_leisure_ps_leave = common dso_local global i32 0, align 4
@rtl92e_set_bw_mode = common dso_local global i32 0, align 4
@rtl92e_set_channel = common dso_local global i32 0, align 4
@rtl92e_start_beacon = common dso_local global i32 0, align 4
@_rtl92e_stop_beacon = common dso_local global i32 0, align 4
@rtl92e_hw_wakeup = common dso_local global i32 0, align 4
@rtl92e_enter_sleep = common dso_local global i32 0, align 4
@_rtl92e_is_tx_queue_empty = common dso_local global i32 0, align 4
@rtl92e_get_nmode_support_by_sec = common dso_local global i32 0, align 4
@rtl92e_is_halfn_supported_by_ap = common dso_local global i32 0, align 4
@rtl92e_set_reg = common dso_local global i32 0, align 4
@rtl92e_set_monitor_mode = common dso_local global i32 0, align 4
@rtl92e_init_gain = common dso_local global i32 0, align 4
@rtl92e_rtllib_ips_leave_wq = common dso_local global i32 0, align 4
@rtl92e_rtllib_ips_leave = common dso_local global i32 0, align 4
@rtl92e_scan_op_backup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_init_priv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_init_priv_handler(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load i32, i32* @_rtl92e_hard_start_xmit, align 4
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 25
  store i32 %6, i32* %10, align 8
  %11 = load i32, i32* @_rtl92e_set_chan, align 4
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 24
  store i32 %11, i32* %15, align 4
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 23
  store i32 %20, i32* %24, align 8
  %25 = load i32, i32* @_rtl92e_hard_data_xmit, align 4
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 22
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @_rtl92e_check_nic_enough_desc, align 4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 21
  store i32 %30, i32* %34, align 8
  %35 = load i32, i32* @_rtl92e_handle_assoc_response, align 4
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 20
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @_rtl92e_handle_beacon, align 4
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 19
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* @rtl92e_set_wireless_mode, align 4
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 18
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @rtl92e_leisure_ps_leave, align 4
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 17
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* @rtl92e_set_bw_mode, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 16
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @rtl92e_set_channel, align 4
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @rtl92e_start_beacon, align 4
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 15
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* @_rtl92e_stop_beacon, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 14
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @rtl92e_hw_wakeup, align 4
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 13
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @rtl92e_enter_sleep, align 4
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 12
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @_rtl92e_is_tx_queue_empty, align 4
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 11
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* @rtl92e_get_nmode_support_by_sec, align 4
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 10
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @rtl92e_is_halfn_supported_by_ap, align 4
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 9
  store i32 %93, i32* %97, align 8
  %98 = load i32, i32* @rtl92e_set_reg, align 4
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @rtl92e_set_monitor_mode, align 4
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 7
  store i32 %103, i32* %107, align 8
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 6
  store i32* null, i32** %111, align 8
  %112 = load i32, i32* @rtl92e_init_gain, align 4
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  store i32 %112, i32* %116, align 8
  %117 = load i32, i32* @rtl92e_rtllib_ips_leave_wq, align 4
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @rtl92e_rtllib_ips_leave, align 4
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i32 %122, i32* %126, align 8
  %127 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %128 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  store i32* null, i32** %130, align 8
  %131 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %132 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* @rtl92e_scan_op_backup, align 4
  %136 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %137 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
