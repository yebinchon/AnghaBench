; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_scan_syncro_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_scan_syncro_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32, i32, i64, i32, i32 (i32, i16)* }
%struct.TYPE_2__ = type { i32 }

@MAX_CHANNEL_NUMBER = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i64 0, align 8
@IEEE80211_SOFTMAC_SCAN_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_scan_syncro(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  store i16 0, i16* %3, align 2
  %6 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = call %struct.TYPE_2__* @GET_DOT11D_INFO(%struct.ieee80211_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @memcpy(i32* %10, i32 %14, i32 %16)
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  br label %21

21:                                               ; preds = %75, %1
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i16, i16* %3, align 2
  %25 = add i16 %24, 1
  store i16 %25, i16* %3, align 2
  %26 = load i16, i16* %3, align 2
  %27 = sext i16 %26 to i32
  %28 = load i32, i32* @MAX_CHANNEL_NUMBER, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %78

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i16, i16* %3, align 2
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds i32, i32* %10, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %23, label %39

39:                                               ; preds = %32
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IEEE80211_LINKED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %78

46:                                               ; preds = %39
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 5
  %49 = load i32 (i32, i16)*, i32 (i32, i16)** %48, align 8
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i16, i16* %3, align 2
  %54 = call i32 %49(i32 %52, i16 signext %53)
  %55 = load i16, i16* %3, align 2
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds i32, i32* %10, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %62 = call i32 @ieee80211_send_probe_requests(%struct.ieee80211_device* %61)
  br label %63

63:                                               ; preds = %60, %46
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IEEE80211_LINKED, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %78

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @IEEE80211_SOFTMAC_SCAN_TIME, align 4
  %77 = call i32 @msleep_interruptible(i32 %76)
  br label %21

78:                                               ; preds = %74, %45, %30
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_LINKED, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %103

90:                                               ; preds = %78
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %94 = call i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %98 = call i32 @dot11d_scan_complete(%struct.ieee80211_device* %97)
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  br label %103

103:                                              ; preds = %99, %84
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local %struct.TYPE_2__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ieee80211_send_probe_requests(%struct.ieee80211_device*) #2

declare dso_local i32 @msleep_interruptible(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @IS_DOT11D_ENABLE(%struct.ieee80211_device*) #2

declare dso_local i32 @dot11d_scan_complete(%struct.ieee80211_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
