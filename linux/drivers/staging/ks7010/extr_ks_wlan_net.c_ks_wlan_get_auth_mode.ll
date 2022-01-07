; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_auth_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_auth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.ks_wlan_private = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_get_auth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_get_auth_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_param*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %13)
  store %struct.ks_wlan_private* %14, %struct.ks_wlan_private** %10, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_param*
  store %struct.iw_param* %16, %struct.iw_param** %11, align 8
  %17 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IW_AUTH_INDEX, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %23 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SLP_SLEEP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %75 [
    i32 128, label %32
    i32 134, label %39
    i32 135, label %46
    i32 132, label %53
    i32 136, label %60
    i32 129, label %67
    i32 131, label %74
    i32 130, label %74
    i32 133, label %74
  ]

32:                                               ; preds = %30
  %33 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %34 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %38 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %76

39:                                               ; preds = %30
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %45 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %76

46:                                               ; preds = %30
  %47 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %48 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %52 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %76

53:                                               ; preds = %30
  %54 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %55 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %59 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %76

60:                                               ; preds = %30
  %61 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %62 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %66 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %76

67:                                               ; preds = %30
  %68 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %69 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %73 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %76

74:                                               ; preds = %30, %30, %30
  br label %75

75:                                               ; preds = %30, %74
  br label %76

76:                                               ; preds = %75, %67, %60, %53, %46, %39, %32
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %27
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
