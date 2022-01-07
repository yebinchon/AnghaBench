; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_rx_event_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_rx_event_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.rx_device_buffer* }
%struct.rx_device_buffer = type { i32, i32 }

@DEVICE_STATE_BOOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rx_event_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_event_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca %struct.rx_device_buffer*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.ks_wlan_private*
  store %struct.ks_wlan_private* %6, %struct.ks_wlan_private** %3, align 8
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %8 = call i64 @rxq_has_space(%struct.ks_wlan_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %12 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DEVICE_STATE_BOOT, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %19, align 8
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %20, i64 %24
  store %struct.rx_device_buffer* %25, %struct.rx_device_buffer** %4, align 8
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %27 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rx_device_buffer*, %struct.rx_device_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.rx_device_buffer, %struct.rx_device_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hostif_receive(%struct.ks_wlan_private* %26, i32 %29, i32 %32)
  %34 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %35 = call i32 @inc_rxqhead(%struct.ks_wlan_private* %34)
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %37 = call i64 @rxq_has_space(%struct.ks_wlan_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %16
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 1
  %42 = call i32 @tasklet_schedule(i32* %41)
  br label %43

43:                                               ; preds = %39, %16
  br label %44

44:                                               ; preds = %43, %10, %1
  ret void
}

declare dso_local i64 @rxq_has_space(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_receive(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @inc_rxqhead(%struct.ks_wlan_private*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
