; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i16, i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@__u16 = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_essid(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %15 = call i32 @rtllib_stop_scan_syncro(%struct.rtllib_device* %14)
  %16 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %17 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %16, i32 0, i32 4
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %20 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %12, align 2
  %22 = load i32, i32* @__u16, align 4
  %23 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %24 = bitcast %union.iwreq_data* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %28 = call i32 @min_t(i32 %22, i64 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %30 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IW_MODE_MONITOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %113

35:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %9, align 4
  br label %113

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load i16, i16* %12, align 2
  %55 = icmp ne i16 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %58 = call i32 @rtllib_stop_protocol(%struct.rtllib_device* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %61 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %60, i32 0, i32 5
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %59
  %70 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_3__*
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @strncpy(i8* %79, i8* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %85 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %88 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %87, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %90 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %89, i32 0, i32 3
  store i32 1, i32* %90, align 4
  br label %102

91:                                               ; preds = %69, %59
  %92 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %93 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %92, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %95 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %98, align 1
  %99 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %100 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %91, %75
  %103 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %104 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %103, i32 0, i32 5
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i16, i16* %12, align 2
  %108 = icmp ne i16 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %111 = call i32 @rtllib_start_protocol(%struct.rtllib_device* %110)
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112, %48, %34
  %114 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %115 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %114, i32 0, i32 4
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @rtllib_stop_scan_syncro(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i32 @rtllib_stop_protocol(%struct.rtllib_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtllib_start_protocol(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
