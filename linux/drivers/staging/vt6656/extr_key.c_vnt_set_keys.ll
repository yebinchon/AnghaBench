; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_key.c_vnt_set_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_key.c_vnt_set_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32 }
%struct.ieee80211_sta = type { i32* }
%struct.ieee80211_vif = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32 }

@MAX_KEY_TABLE = common dso_local global i32 0, align 4
@VNT_KEY_DEFAULTKEY = common dso_local global i32 0, align 4
@KEY_CTL_WEP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@KEY_CTL_TKIP = common dso_local global i32 0, align 4
@MAC_REVISION_A1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KEY_CTL_CCMP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@VNT_KEY_PAIRWISE = common dso_local global i32 0, align 4
@VNT_KEY_GROUP_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_set_keys(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_vif* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ieee80211_bss_conf*, align 8
  %11 = alloca %struct.vnt_private*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %17, %struct.ieee80211_bss_conf** %10, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.vnt_private*, %struct.vnt_private** %19, align 8
  store %struct.vnt_private* %20, %struct.vnt_private** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %22 = icmp ne %struct.ieee80211_sta* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %12, align 8
  br label %28

28:                                               ; preds = %23, %4
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %99 [
    i32 0, label %32
    i32 128, label %46
    i32 129, label %46
    i32 130, label %71
    i32 131, label %83
  ]

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %41, %32
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @MAX_KEY_TABLE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.vnt_private*, %struct.vnt_private** %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @vnt_mac_disable_keyentry(%struct.vnt_private* %38, i32 %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %33

44:                                               ; preds = %33
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %130

46:                                               ; preds = %28, %28
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @MAX_KEY_TABLE, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.vnt_private*, %struct.vnt_private** %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @vnt_mac_disable_keyentry(%struct.vnt_private* %52, i32 %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %47

58:                                               ; preds = %47
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %62 = load i32, i32* @VNT_KEY_DEFAULTKEY, align 4
  %63 = load i32, i32* @KEY_CTL_WEP, align 4
  %64 = call i32 @vnt_set_keymode(%struct.ieee80211_hw* %59, i32* %60, %struct.ieee80211_key_conf* %61, i32 %62, i32 %63, i32 1)
  %65 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %130

71:                                               ; preds = %28
  %72 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %73 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @KEY_CTL_TKIP, align 4
  store i32 %82, i32* %13, align 4
  br label %99

83:                                               ; preds = %28
  %84 = load %struct.vnt_private*, %struct.vnt_private** %11, align 8
  %85 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MAC_REVISION_A1, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %130

92:                                               ; preds = %83
  %93 = load i32, i32* @KEY_CTL_CCMP, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %95 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %96 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %92, %28, %71
  %100 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %110 = load i32, i32* @VNT_KEY_PAIRWISE, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @vnt_set_keymode(%struct.ieee80211_hw* %107, i32* %108, %struct.ieee80211_key_conf* %109, i32 %110, i32 %111, i32 1)
  br label %129

113:                                              ; preds = %99
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %117 = load i32, i32* @VNT_KEY_DEFAULTKEY, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @vnt_set_keymode(%struct.ieee80211_hw* %114, i32* %115, %struct.ieee80211_key_conf* %116, i32 %117, i32 %118, i32 1)
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %121 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %122 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %126 = load i32, i32* @VNT_KEY_GROUP_ADDRESS, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @vnt_set_keymode(%struct.ieee80211_hw* %120, i32* %124, %struct.ieee80211_key_conf* %125, i32 %126, i32 %127, i32 1)
  br label %129

129:                                              ; preds = %113, %106
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %89, %58, %44
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @vnt_mac_disable_keyentry(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_set_keymode(%struct.ieee80211_hw*, i32*, %struct.ieee80211_key_conf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
