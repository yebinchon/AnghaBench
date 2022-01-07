; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_freq }
%struct.iw_freq = type { i32, i32 }

@rtllib_wlan_frequencies = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_get_freq(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_freq*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %12 = bitcast %union.iwreq_data* %11 to %struct.iw_freq*
  store %struct.iw_freq* %12, %struct.iw_freq** %10, align 8
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load i32*, i32** @rtllib_wlan_frequencies, align 8
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 100000
  %30 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %31 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %33 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
