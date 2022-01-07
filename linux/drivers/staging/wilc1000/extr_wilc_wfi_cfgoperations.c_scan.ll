; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i32, i64, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wilc_vif = type { i32, %struct.wilc_priv }
%struct.wilc_priv = type { i32, %struct.cfg80211_scan_request* }

@WILC_MAX_NUM_SCANNED_CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Requested scanned channels over\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WILC_FW_ACTIVE_SCAN = common dso_local global i32 0, align 4
@WILC_FW_PASSIVE_SCAN = common dso_local global i32 0, align 4
@WILC_FW_USER_SCAN = common dso_local global i32 0, align 4
@cfg_scan_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca %struct.wilc_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %5, align 8
  %15 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %16 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.wilc_vif* @netdev_priv(i32 %19)
  store %struct.wilc_vif* %20, %struct.wilc_vif** %6, align 8
  %21 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %22 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %21, i32 0, i32 1
  store %struct.wilc_priv* %22, %struct.wilc_priv** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* @WILC_MAX_NUM_SCANNED_CH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @WILC_MAX_NUM_SCANNED_CH, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %34 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %99

39:                                               ; preds = %2
  %40 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %41 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %42 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %41, i32 0, i32 1
  store %struct.cfg80211_scan_request* %40, %struct.cfg80211_scan_request** %42, align 8
  %43 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %44 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %65, %39
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %48 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %54 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @ieee80211_frequency_to_channel(i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %26, i64 %63
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %52
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %45

68:                                               ; preds = %45
  %69 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %70 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @WILC_FW_ACTIVE_SCAN, align 4
  store i32 %74, i32* %12, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @WILC_FW_PASSIVE_SCAN, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %79 = load i32, i32* @WILC_FW_USER_SCAN, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %82 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* @cfg_scan_result, align 4
  %86 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %87 = bitcast %struct.wilc_priv* %86 to i8*
  %88 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %89 = call i32 @wilc_scan(%struct.wilc_vif* %78, i32 %79, i32 %80, i32* %26, i64 %84, i32 %85, i8* %87, %struct.cfg80211_scan_request* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %77
  %93 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %94 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %93, i32 0, i32 1
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %94, align 8
  %95 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %96 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %77
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %32
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.wilc_vif* @netdev_priv(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wilc_scan(%struct.wilc_vif*, i32, i32, i32*, i64, i32, i8*, %struct.cfg80211_scan_request*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
