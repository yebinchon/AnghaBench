; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_vendor_cmd.c_wlcore_vendor_cmd_smart_config_set_group_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_vendor_cmd.c_wlcore_vendor_cmd_smart_config_set_group_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.nlattr = type { i32 }

@NUM_WLCORE_VENDOR_ATTR = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"testmode cmd smart config set group key\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_WLCORE_VENDOR_ATTR = common dso_local global i32 0, align 4
@wlcore_vendor_attr_policy = common dso_local global i32 0, align 4
@WLCORE_VENDOR_ATTR_GROUP_ID = common dso_local global i64 0, align 8
@WLCORE_VENDOR_ATTR_GROUP_KEY = common dso_local global i64 0, align 8
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i8*, i32)* @wlcore_vendor_cmd_smart_config_set_group_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_vendor_cmd_smart_config_set_group_key(%struct.wiphy* %0, %struct.wireless_dev* %1, i8* %2, i32 %3) #0 {
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
  %26 = call i32 @wl1271_debug(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

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
  br label %110

42:                                               ; preds = %32
  %43 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_ID, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_KEY, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

55:                                               ; preds = %47
  %56 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WLCORE_STATE_ON, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %105

70:                                               ; preds = %55
  %71 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pm_runtime_get_sync(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %79 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pm_runtime_put_noidle(i32 %80)
  br label %105

82:                                               ; preds = %70
  %83 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %84 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_ID, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @nla_get_u32(%struct.nlattr* %86)
  %88 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_KEY, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @nla_len(%struct.nlattr* %90)
  %92 = load i64, i64* @WLCORE_VENDOR_ATTR_GROUP_KEY, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @nla_data(%struct.nlattr* %94)
  %96 = call i32 @wlcore_smart_config_set_group_key(%struct.wl1271* %83, i32 %87, i32 %91, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pm_runtime_mark_last_busy(i32 %99)
  %101 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pm_runtime_put_autosuspend(i32 %103)
  br label %105

105:                                              ; preds = %82, %77, %67
  %106 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %107 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %105, %52, %40, %29
  %111 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
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

declare dso_local i32 @wlcore_smart_config_set_group_key(%struct.wl1271*, i32, i32, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

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
