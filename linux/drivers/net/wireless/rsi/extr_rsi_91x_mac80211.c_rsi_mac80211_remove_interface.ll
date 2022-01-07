; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { i64, %struct.ieee80211_vif**, %struct.rsi_common* }
%struct.rsi_common = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Remove Interface Called\0A\00", align 1
@RSI_OPMODE_UNSUPPORTED = common dso_local global i32 0, align 4
@ERR_ZONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Opmode error : %d\0A\00", align 1
@RSI_MAX_VIFS = common dso_local global i32 0, align 4
@VAP_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rsi_mac80211_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_mac80211_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rsi_hw*, align 8
  %6 = alloca %struct.rsi_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %10, align 8
  store %struct.rsi_hw* %11, %struct.rsi_hw** %5, align 8
  %12 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %13 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %12, i32 0, i32 2
  %14 = load %struct.rsi_common*, %struct.rsi_common** %13, align 8
  store %struct.rsi_common* %14, %struct.rsi_common** %6, align 8
  %15 = load i32, i32* @INFO_ZONE, align 4
  %16 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %18 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %21 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %26 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %95

28:                                               ; preds = %2
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rsi_map_intf_mode(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RSI_OPMODE_UNSUPPORTED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @ERR_ZONE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %41 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %95

43:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @RSI_MAX_VIFS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %50 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %49, i32 0, i32 1
  %51 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %51, i64 %53
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %54, align 8
  %56 = icmp ne %struct.ieee80211_vif* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %88

58:                                               ; preds = %48
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %60 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %61 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %60, i32 0, i32 1
  %62 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %62, i64 %64
  %66 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %65, align 8
  %67 = icmp eq %struct.ieee80211_vif* %59, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %58
  %69 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @VAP_DELETE, align 4
  %76 = call i32 @rsi_set_vap_capabilities(%struct.rsi_common* %69, i32 %70, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %78 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %82 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %81, i32 0, i32 1
  %83 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %83, i64 %85
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %86, align 8
  br label %87

87:                                               ; preds = %68, %58
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %44

91:                                               ; preds = %44
  %92 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %93 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %36, %24
  ret void
}

declare dso_local i32 @rsi_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rsi_map_intf_mode(i32) #1

declare dso_local i32 @rsi_set_vap_capabilities(%struct.rsi_common*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
