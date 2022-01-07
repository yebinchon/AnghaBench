; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_tx_device_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_tx_device_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.tx_device_buffer* }
%struct.tx_device_buffer = type { i32, i32 (%struct.ks_wlan_private.0*, i32)*, i32, i32 }
%struct.ks_wlan_private.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@PS_SNOOZE = common dso_local global i64 0, align 8
@DEVICE_STATE_BOOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"write_to_device error !!(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @tx_device_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_device_task(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.tx_device_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %6 = call i64 @txq_has_space(%struct.ks_wlan_private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %10 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load i64, i64* @PS_SNOOZE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %1
  br label %87

16:                                               ; preds = %8
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %19, align 8
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %20, i64 %24
  store %struct.tx_device_buffer* %25, %struct.tx_device_buffer** %3, align 8
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %27 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DEVICE_STATE_BOOT, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %16
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %33 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %37 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_to_device(%struct.ks_wlan_private* %32, i32 %35, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %44 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @netdev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %49 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %52 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %51, i32 0, i32 1
  %53 = call i32 @queue_delayed_work(i32 %50, i32* %52, i32 1)
  br label %87

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kfree(i32 %58)
  %60 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %61 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %60, i32 0, i32 1
  %62 = load i32 (%struct.ks_wlan_private.0*, i32)*, i32 (%struct.ks_wlan_private.0*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.ks_wlan_private.0*, i32)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %65, i32 0, i32 1
  %67 = load i32 (%struct.ks_wlan_private.0*, i32)*, i32 (%struct.ks_wlan_private.0*, i32)** %66, align 8
  %68 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %69 = bitcast %struct.ks_wlan_private* %68 to %struct.ks_wlan_private.0*
  %70 = load %struct.tx_device_buffer*, %struct.tx_device_buffer** %3, align 8
  %71 = getelementptr inbounds %struct.tx_device_buffer, %struct.tx_device_buffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %67(%struct.ks_wlan_private.0* %69, i32 %72)
  br label %74

74:                                               ; preds = %64, %55
  %75 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %76 = call i32 @inc_txqhead(%struct.ks_wlan_private* %75)
  %77 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %78 = call i64 @txq_has_space(%struct.ks_wlan_private* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %82 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %85 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %84, i32 0, i32 1
  %86 = call i32 @queue_delayed_work(i32 %83, i32* %85, i32 0)
  br label %87

87:                                               ; preds = %15, %42, %80, %74
  ret void
}

declare dso_local i64 @txq_has_space(%struct.ks_wlan_private*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @write_to_device(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @inc_txqhead(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
