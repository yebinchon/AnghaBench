; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_trx_device_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_trx_device_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.tx_device_buffer* }
%struct.tx_device_buffer = type { i32, i32 (%struct.ks_wlan_private.0*, i32)*, i32 }
%struct.ks_wlan_private.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @trx_device_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trx_device_exit(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.tx_device_buffer*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  br label %4

4:                                                ; preds = %36, %1
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %6 = call i64 @txq_has_space(%struct.ks_wlan_private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %10 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %11, align 8
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %12, i64 %16
  store %struct.tx_device_buffer* %17, %struct.tx_device_buffer** %3, align 8
  %18 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %22, i32 0, i32 1
  %24 = load i32 (%struct.ks_wlan_private.0*, i32)*, i32 (%struct.ks_wlan_private.0*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.ks_wlan_private.0*, i32)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %8
  %27 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %27, i32 0, i32 1
  %29 = load i32 (%struct.ks_wlan_private.0*, i32)*, i32 (%struct.ks_wlan_private.0*, i32)** %28, align 8
  %30 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %31 = bitcast %struct.ks_wlan_private* %30 to %struct.ks_wlan_private.0*
  %32 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %29(%struct.ks_wlan_private.0* %31, i32 %34)
  br label %36

36:                                               ; preds = %26, %8
  %37 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %38 = call i32 @inc_txqhead(%struct.ks_wlan_private* %37)
  br label %4

39:                                               ; preds = %4
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 0
  %42 = call i32 @tasklet_kill(i32* %41)
  ret void
}

declare dso_local i64 @txq_has_space(%struct.ks_wlan_private*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @inc_txqhead(%struct.ks_wlan_private*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
