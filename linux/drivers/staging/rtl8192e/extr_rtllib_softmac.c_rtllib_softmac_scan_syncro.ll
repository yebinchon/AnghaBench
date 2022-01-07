; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_scan_syncro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_scan_syncro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32*, i64, i32, i32, i32, i64, i32 (i32, i16)* }
%union.iwreq_data = type { i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i16 0, align 2
@RTLLIB_LINKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"============>sync_scan_hurryup out\0A\00", align 1
@RTLLIB_SOFTMAC_SCAN_TIME = common dso_local global i32 0, align 4
@SIOCGIWSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, i32)* @rtllib_softmac_scan_syncro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_softmac_scan_syncro(%struct.rtllib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.iwreq_data, align 4
  %6 = alloca i16, align 2
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %6, align 2
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %8 = call i32 @rtllib_update_active_chan_map(%struct.rtllib_device* %7)
  %9 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %10 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 5
  %13 = call i32 @mutex_lock(i32* %12)
  br label %14

14:                                               ; preds = %2, %72
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i16, i16* %6, align 2
  %17 = add i16 %16, 1
  store i16 %17, i16* %6, align 2
  %18 = load i16, i16* %6, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @MAX_CHANNEL_NUMBER, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %75

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i16, i16* %6, align 2
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %15, label %35

35:                                               ; preds = %25
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RTLLIB_LINKED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %75

42:                                               ; preds = %35
  %43 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %44 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_info(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %75

52:                                               ; preds = %42
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %54 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %53, i32 0, i32 7
  %55 = load i32 (i32, i16)*, i32 (i32, i16)** %54, align 8
  %56 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %57 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i16, i16* %6, align 2
  %60 = call i32 %55(i32 %58, i16 signext %59)
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i16, i16* %6, align 2
  %65 = sext i16 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %71 = call i32 @rtllib_send_probe_requests(%struct.rtllib_device* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %52
  %73 = load i32, i32* @RTLLIB_SOFTMAC_SCAN_TIME, align 4
  %74 = call i32 @msleep_interruptible_rsl(i32 %73)
  br label %14

75:                                               ; preds = %47, %41, %23
  %76 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %77 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %79 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %78, i32 0, i32 6
  store i64 0, i64* %79, align 8
  %80 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %81 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RTLLIB_LINKED, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %87 = call i64 @IS_DOT11D_ENABLE(%struct.rtllib_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %91 = call i32 @dot11d_scan_complete(%struct.rtllib_device* %90)
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %95 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %94, i32 0, i32 5
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %98 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = call i32 @memset(%union.iwreq_data* %5, i32 0, i32 4)
  %100 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %101 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SIOCGIWSCAN, align 4
  %104 = call i32 @wireless_send_event(i32 %102, i32 %103, %union.iwreq_data* %5, i32* null)
  ret void
}

declare dso_local i32 @rtllib_update_active_chan_map(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @rtllib_send_probe_requests(%struct.rtllib_device*, i32) #1

declare dso_local i32 @msleep_interruptible_rsl(i32) #1

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.rtllib_device*) #1

declare dso_local i32 @dot11d_scan_complete(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
