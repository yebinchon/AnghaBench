; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_wap_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_wap_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i16, i32, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.sockaddr = type { i64, i32 }

@IW_MODE_MASTER = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_wap(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.sockaddr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  store i16 %15, i16* %11, align 2
  %16 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %12, align 8
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 4
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IW_MODE_MASTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARPHRD_ETHER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %77

38:                                               ; preds = %29
  %39 = load i16, i16* %11, align 2
  %40 = icmp ne i16 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %43 = call i32 @ieee80211_stop_protocol(%struct.ieee80211_device* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 5
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @is_zero_ether_addr(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 5
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i16, i16* %11, align 2
  %72 = icmp ne i16 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %44
  %74 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %75 = call i32 @ieee80211_start_protocol(%struct.ieee80211_device* %74)
  br label %76

76:                                               ; preds = %73, %44
  br label %77

77:                                               ; preds = %76, %35, %28
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 4
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_stop_protocol(%struct.ieee80211_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_start_protocol(%struct.ieee80211_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
