; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sleep_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sleep_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hostif_sleep_request = type { i32 }

@SLP_SLEEP = common dso_local global i32 0, align 4
@HIF_SLEEP_REQ = common dso_local global i32 0, align 4
@SLP_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid mode %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32)* @hostif_sleep_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_sleep_request(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostif_sleep_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SLP_SLEEP, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, i32* @HIF_SLEEP_REQ, align 4
  %11 = call %struct.hostif_sleep_request* @hostif_generic_request(i32 4, i32 %10)
  store %struct.hostif_sleep_request* %11, %struct.hostif_sleep_request** %5, align 8
  %12 = load %struct.hostif_sleep_request*, %struct.hostif_sleep_request** %5, align 8
  %13 = icmp ne %struct.hostif_sleep_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %43

15:                                               ; preds = %9
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %17 = load %struct.hostif_sleep_request*, %struct.hostif_sleep_request** %5, align 8
  %18 = call i32 @hif_align_size(i32 4)
  %19 = call i32 @send_request_to_device(%struct.ks_wlan_private* %16, %struct.hostif_sleep_request* %17, i32 %18)
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SLP_ACTIVE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %26 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @atomic_set(i32* %27, i32 1)
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 1
  %34 = call i32 @queue_delayed_work(i32 %31, i32* %33, i32 1)
  br label %42

35:                                               ; preds = %20
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = call i32 @netdev_err(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %43

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %14, %35, %42, %15
  ret void
}

declare dso_local %struct.hostif_sleep_request* @hostif_generic_request(i32, i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_sleep_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
