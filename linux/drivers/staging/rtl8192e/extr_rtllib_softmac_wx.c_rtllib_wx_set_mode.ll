; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_mode(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %11 = call i32 @rtllib_stop_scan_syncro(%struct.rtllib_device* %10)
  %12 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %13 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %16 = bitcast %union.iwreq_data* %15 to i32*
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 128, label %18
    i32 131, label %18
    i32 129, label %18
    i32 130, label %19
  ]

18:                                               ; preds = %4, %4, %4
  br label %25

19:                                               ; preds = %4
  %20 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %21 = bitcast %union.iwreq_data* %20 to i32*
  store i32 129, i32* %21, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %87

25:                                               ; preds = %19, %18
  %26 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %27 = bitcast %union.iwreq_data* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %30 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %87

34:                                               ; preds = %25
  %35 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %36 = bitcast %union.iwreq_data* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @rtllib_EnableNetMonitorMode(%struct.TYPE_3__* %47, i32 0)
  br label %65

49:                                               ; preds = %34
  %50 = load i32, i32* @ARPHRD_ETHER, align 4
  %51 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %52 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %61 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @rtllib_DisableNetMonitorMode(%struct.TYPE_3__* %62, i32 0)
  br label %64

64:                                               ; preds = %59, %49
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %67 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %72 = bitcast %union.iwreq_data* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %86

76:                                               ; preds = %65
  %77 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %78 = call i32 @rtllib_stop_protocol(%struct.rtllib_device* %77, i32 1)
  %79 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %80 = bitcast %union.iwreq_data* %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %83 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %85 = call i32 @rtllib_start_protocol(%struct.rtllib_device* %84)
  br label %86

86:                                               ; preds = %76, %70
  br label %87

87:                                               ; preds = %86, %33, %22
  %88 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %89 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @rtllib_stop_scan_syncro(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtllib_EnableNetMonitorMode(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @rtllib_DisableNetMonitorMode(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @rtllib_stop_protocol(%struct.rtllib_device*, i32) #1

declare dso_local i32 @rtllib_start_protocol(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
