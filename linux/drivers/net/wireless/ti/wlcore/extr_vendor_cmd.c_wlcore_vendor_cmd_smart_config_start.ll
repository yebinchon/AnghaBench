; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_vendor_cmd.c_wlcore_vendor_cmd_smart_config_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_vendor_cmd.c_wlcore_vendor_cmd_smart_config_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.nlattr = type { i32 }

@NUM_WLCORE_VENDOR_ATTR = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vendor cmd smart config start\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_WLCORE_VENDOR_ATTR = common dso_local global i32 0, align 4
@wlcore_vendor_attr_policy = common dso_local global i32 0, align 4
@WLCORE_VENDOR_ATTR_GROUP_ID = common dso_local global i64 0, align 8
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i8*, i32)* @wlcore_vendor_cmd_smart_config_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_vendor_cmd_smart_config_start(%struct.wiphy* %0, %struct.wireless_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.wl1271*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %17 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %16)
  store %struct.ieee80211_hw* %17, %struct.ieee80211_hw** %10, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.wl1271*, %struct.wl1271** %19, align 8
  store %struct.wl1271* %20, %struct.wl1271** %11, align 8
  %21 = load i32, i32* @NUM_WLCORE_VENDOR_ATTR, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @DEBUG_CMD, align 4
  %26 = call i32 @wl1271_debug(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

32:                                               ; preds = %4
  %33 = load i32, i32* @MAX_WLCORE_VENDOR_ATTR, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @wlcore_vendor_attr_policy, align 4
  %37 = call i32 @nla_parse_deprecated(%struct.nlattr** %24, i32 %33, i8* %34, i32 %35, i32 %36, i32* null)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

42:                                               ; preds = %32
  %43 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_ID, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

50:                                               ; preds = %42
  %51 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WLCORE_STATE_ON, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %14, align 4
  br label %92

65:                                               ; preds = %50
  %66 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pm_runtime_get_sync(i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pm_runtime_put_noidle(i32 %75)
  br label %92

77:                                               ; preds = %65
  %78 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %79 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_ID, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i32 @nla_get_u32(%struct.nlattr* %81)
  %83 = call i32 @wlcore_smart_config_start(%struct.wl1271* %78, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pm_runtime_mark_last_busy(i32 %86)
  %88 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pm_runtime_put_autosuspend(i32 %90)
  br label %92

92:                                               ; preds = %77, %72, %62
  %93 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %94 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %97

97:                                               ; preds = %92, %47, %40, %29
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wlcore_smart_config_start(%struct.wl1271*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
