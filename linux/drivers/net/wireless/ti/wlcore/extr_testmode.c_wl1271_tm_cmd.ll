; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.nlattr = type { i32 }

@WL1271_TM_ATTR_MAX = common dso_local global i32 0, align 4
@wl1271_tm_policy = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_CMD_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PLT_CHIP_AWAKE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_tm_cmd(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wl1271*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.wl1271*, %struct.wl1271** %17, align 8
  store %struct.wl1271* %18, %struct.wl1271** %10, align 8
  %19 = load i32, i32* @WL1271_TM_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @WL1271_TM_ATTR_MAX, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @wl1271_tm_policy, align 4
  %28 = call i32 @nla_parse_deprecated(%struct.nlattr** %23, i32 %24, i8* %25, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

33:                                               ; preds = %4
  %34 = load i64, i64* @WL1271_TM_ATTR_CMD_ID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

41:                                               ; preds = %33
  %42 = load i64, i64* @WL1271_TM_ATTR_CMD_ID, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_u32(%struct.nlattr* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PLT_CHIP_AWAKE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 129
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

57:                                               ; preds = %51, %41
  %58 = load i32, i32* %13, align 4
  switch i32 %58, label %74 [
    i32 128, label %59
    i32 130, label %62
    i32 132, label %65
    i32 129, label %68
    i32 131, label %71
  ]

59:                                               ; preds = %57
  %60 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %61 = call i32 @wl1271_tm_cmd_test(%struct.wl1271* %60, %struct.nlattr** %23)
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

62:                                               ; preds = %57
  %63 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %64 = call i32 @wl1271_tm_cmd_interrogate(%struct.wl1271* %63, %struct.nlattr** %23)
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

65:                                               ; preds = %57
  %66 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %67 = call i32 @wl1271_tm_cmd_configure(%struct.wl1271* %66, %struct.nlattr** %23)
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

68:                                               ; preds = %57
  %69 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %70 = call i32 @wl1271_tm_cmd_set_plt_mode(%struct.wl1271* %69, %struct.nlattr** %23)
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

71:                                               ; preds = %57
  %72 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %73 = call i32 @wl12xx_tm_cmd_get_mac(%struct.wl1271* %72, %struct.nlattr** %23)
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

74:                                               ; preds = %57
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %74, %71, %68, %65, %62, %59, %54, %38, %31
  %78 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @wl1271_tm_cmd_test(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl1271_tm_cmd_interrogate(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl1271_tm_cmd_configure(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl1271_tm_cmd_set_plt_mode(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl12xx_tm_cmd_get_mac(%struct.wl1271*, %struct.nlattr**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
