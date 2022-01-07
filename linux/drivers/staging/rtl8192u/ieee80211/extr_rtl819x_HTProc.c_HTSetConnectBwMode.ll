; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_HTProc.c_HTSetConnectBwMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_HTProc.c_HTSetConnectBwMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_3__, i32, i32 (i32)*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@HT_EXTCHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@HT_EXTCHNL_OFFSET_NO_EXT = common dso_local global i8* null, align 8
@HT_EXTCHNL_OFFSET_UPPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTSetConnectBwMode(%struct.ieee80211_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %82

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %82

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 2
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HT_EXTCHNL_OFFSET_LOWER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** @HT_EXTCHNL_OFFSET_NO_EXT, align 8
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %41, %35
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @HT_EXTCHNL_OFFSET_UPPER, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HT_EXTCHNL_OFFSET_LOWER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load i8*, i8** @HT_EXTCHNL_OFFSET_NO_EXT, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %56
  br label %77

70:                                               ; preds = %26, %22
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load i8*, i8** @HT_EXTCHNL_OFFSET_NO_EXT, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %81 = call i32 @HTSetConnectBwModeCallback(%struct.ieee80211_device* %80)
  br label %82

82:                                               ; preds = %77, %21, %15
  ret void
}

declare dso_local i32 @HTSetConnectBwModeCallback(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
