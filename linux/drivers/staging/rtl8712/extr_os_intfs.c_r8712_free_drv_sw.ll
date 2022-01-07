; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r8712_free_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r8712_free_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_drv_sw(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 6
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct._adapter*, %struct._adapter** %2, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 5
  %9 = call i32 @r8712_free_cmd_priv(i32* %8)
  %10 = load %struct._adapter*, %struct._adapter** %2, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 4
  %12 = call i32 @r8712_free_evt_priv(i32* %11)
  %13 = load %struct._adapter*, %struct._adapter** %2, align 8
  %14 = call i32 @r8712_DeInitSwLeds(%struct._adapter* %13)
  %15 = load %struct._adapter*, %struct._adapter** %2, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 3
  %17 = call i32 @r8712_free_mlme_priv(i32* %16)
  %18 = load %struct._adapter*, %struct._adapter** %2, align 8
  %19 = call i32 @r8712_free_io_queue(%struct._adapter* %18)
  %20 = load %struct._adapter*, %struct._adapter** %2, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 2
  %22 = call i32 @_free_xmit_priv(i32* %21)
  %23 = load %struct._adapter*, %struct._adapter** %2, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 1
  %25 = call i32 @_r8712_free_sta_priv(i32* %24)
  %26 = load %struct._adapter*, %struct._adapter** %2, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 0
  %28 = call i32 @_r8712_free_recv_priv(i32* %27)
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = call i32 @mp871xdeinit(%struct._adapter* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @free_netdev(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @r8712_free_cmd_priv(i32*) #1

declare dso_local i32 @r8712_free_evt_priv(i32*) #1

declare dso_local i32 @r8712_DeInitSwLeds(%struct._adapter*) #1

declare dso_local i32 @r8712_free_mlme_priv(i32*) #1

declare dso_local i32 @r8712_free_io_queue(%struct._adapter*) #1

declare dso_local i32 @_free_xmit_priv(i32*) #1

declare dso_local i32 @_r8712_free_sta_priv(i32*) #1

declare dso_local i32 @_r8712_free_recv_priv(i32*) #1

declare dso_local i32 @mp871xdeinit(%struct._adapter*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
