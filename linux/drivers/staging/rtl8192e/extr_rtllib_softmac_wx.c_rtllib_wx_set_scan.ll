; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i64, i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }

@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@RTLLIB_LINKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_scan(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IW_MODE_MONITOR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  store i32 -1, i32* %10, align 4
  br label %36

25:                                               ; preds = %19
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTLLIB_LINKED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %33 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %32, i32 0, i32 3
  %34 = call i32 @schedule_work(i32* %33)
  store i32 0, i32* %5, align 4
  br label %41

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %38 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
