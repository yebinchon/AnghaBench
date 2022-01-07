; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_preamble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@LONG_PREAMBLE = common dso_local global i64 0, align 8
@SHORT_PREAMBLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SME_MODE_SET = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, i64*, i8*)* @ks_wlan_set_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_preamble(%struct.net_device* %0, %struct.iw_request_info* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ks_wlan_private* %12, %struct.ks_wlan_private** %10, align 8
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SLP_SLEEP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LONG_PREAMBLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SHORT_PREAMBLE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %26, %21
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %38 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* @SME_MODE_SET, align 4
  %41 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %42 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @EINPROGRESS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %34, %31, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
