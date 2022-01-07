; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_essid_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_essid_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_LINKED_SCANNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_essid(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IW_MODE_MONITOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %82

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 3
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %19
  store i32 -1, i32* %11, align 4
  br label %76

39:                                               ; preds = %32
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IEEE80211_LINKED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IEEE80211_LINKED_SCANNING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -1, i32* %11, align 4
  br label %76

57:                                               ; preds = %51, %45, %39
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %64 = bitcast %union.iwreq_data* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @strncpy(i8* %66, i8* %70, i32 %71)
  %73 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %74 = bitcast %union.iwreq_data* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %57, %56, %38
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 3
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
