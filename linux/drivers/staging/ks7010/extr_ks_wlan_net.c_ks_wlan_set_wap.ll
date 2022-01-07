; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@MODE_ADHOC = common dso_local global i64 0, align 8
@MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SME_MODE_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bssid = %pM\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
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
  br label %86

21:                                               ; preds = %4
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %23 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MODE_ADHOC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MODE_INFRASTRUCTURE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @eth_zero_addr(i64 %39)
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %28, %21
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %45 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ether_addr_copy(i64 %47, i32 %51)
  %53 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %54 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i64 @is_valid_ether_addr(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load i32, i32* @SME_MODE_SET, align 4
  %62 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %63 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %43
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %69 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @netdev_dbg(%struct.net_device* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %74 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load i32, i32* @SME_MODE_SET, align 4
  %79 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %80 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @EINPROGRESS, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %77, %35, %18
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_zero_addr(i64) #1

declare dso_local i32 @ether_addr_copy(i64, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
