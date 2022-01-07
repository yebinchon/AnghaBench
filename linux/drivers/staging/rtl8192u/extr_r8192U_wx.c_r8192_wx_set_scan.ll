; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_wx.c_r8192_wx_set_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_wx.c_r8192_wx_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device*, i32 }
%struct.ieee80211_device = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.iw_scan_req = type { i64, i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8192_wx_set_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8192_wx_set_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.ieee80211_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iw_scan_req*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %10, align 8
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %17, align 8
  store %struct.ieee80211_device* %18, %struct.ieee80211_device** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENETDOWN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %104

26:                                               ; preds = %4
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %28, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %104

37:                                               ; preds = %26
  %38 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %37
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %47, %struct.iw_scan_req** %13, align 8
  %48 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %49 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %54 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %64 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.iw_scan_req*, %struct.iw_scan_req** %13, align 8
  %67 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i32 %62, i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %52, %45
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 1
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %76, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IEEE80211_LINKED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 1
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %84, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 1
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %88, align 8
  %90 = call i32 @ieee80211_softmac_scan_syncro(%struct.ieee80211_device* %89)
  store i32 0, i32* %12, align 4
  br label %99

91:                                               ; preds = %71
  %92 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %93 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %92, i32 0, i32 1
  %94 = load %struct.ieee80211_device*, %struct.ieee80211_device** %93, align 8
  %95 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %96 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @ieee80211_wx_set_scan(%struct.ieee80211_device* %94, %struct.iw_request_info* %95, %union.iwreq_data* %96, i8* %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %91, %82
  %100 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %101 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %34, %23
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_softmac_scan_syncro(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_wx_set_scan(%struct.ieee80211_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
