; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_main.c_cw1200_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_ops = type { i32 }
%struct.hwbus_priv = type { i32 }
%struct.device = type { i32 }
%struct.cw1200_common = type { i32, i8*, i32, i32, i32, %struct.device*, %struct.hwbus_priv*, %struct.hwbus_ops* }
%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.wsm_operational_mode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cw1200_power_mode = common dso_local global i32 0, align 4
@cw1200_refclk = common dso_local global i32 0, align 4
@cw1200_sdd_path = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Timeout waiting on device startup\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_core_probe(%struct.hwbus_ops* %0, %struct.hwbus_priv* %1, %struct.device* %2, %struct.cw1200_common** %3, i32 %4, i32* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwbus_ops*, align 8
  %11 = alloca %struct.hwbus_priv*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.cw1200_common**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_hw*, align 8
  %20 = alloca %struct.cw1200_common*, align 8
  %21 = alloca %struct.wsm_operational_mode, align 4
  store %struct.hwbus_ops* %0, %struct.hwbus_ops** %10, align 8
  store %struct.hwbus_priv* %1, %struct.hwbus_priv** %11, align 8
  store %struct.device* %2, %struct.device** %12, align 8
  store %struct.cw1200_common** %3, %struct.cw1200_common*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %18, align 4
  %24 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %21, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.wsm_operational_mode, %struct.wsm_operational_mode* %21, i32 0, i32 1
  %26 = load i32, i32* @cw1200_power_mode, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %17, align 4
  %29 = call %struct.ieee80211_hw* @cw1200_init_common(i32* %27, i32 %28)
  store %struct.ieee80211_hw* %29, %struct.ieee80211_hw** %19, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %19, align 8
  %31 = icmp ne %struct.ieee80211_hw* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %8
  br label %117

33:                                               ; preds = %8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %19, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %35, align 8
  store %struct.cw1200_common* %36, %struct.cw1200_common** %20, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @cw1200_refclk, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @cw1200_refclk, align 4
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %45 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %49 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @cw1200_sdd_path, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8*, i8** @cw1200_sdd_path, align 8
  %54 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %55 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.hwbus_ops*, %struct.hwbus_ops** %10, align 8
  %58 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %59 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %58, i32 0, i32 7
  store %struct.hwbus_ops* %57, %struct.hwbus_ops** %59, align 8
  %60 = load %struct.hwbus_priv*, %struct.hwbus_priv** %11, align 8
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %62 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %61, i32 0, i32 6
  store %struct.hwbus_priv* %60, %struct.hwbus_priv** %62, align 8
  %63 = load %struct.device*, %struct.device** %12, align 8
  %64 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %65 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %64, i32 0, i32 5
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %67 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.device*, %struct.device** %12, align 8
  %70 = call i32 @SET_IEEE80211_DEV(i32 %68, %struct.device* %69)
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %72 = load %struct.cw1200_common**, %struct.cw1200_common*** %13, align 8
  store %struct.cw1200_common* %71, %struct.cw1200_common** %72, align 8
  %73 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %74 = call i32 @cw1200_register_bh(%struct.cw1200_common* %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %56
  br label %114

78:                                               ; preds = %56
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %80 = call i32 @cw1200_load_firmware(%struct.cw1200_common* %79)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %111

84:                                               ; preds = %78
  %85 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %86 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %89 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @HZ, align 4
  %92 = mul nsw i32 3, %91
  %93 = call i64 @wait_event_interruptible_timeout(i32 %87, i32 %90, i32 %92)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %18, align 4
  br label %111

99:                                               ; preds = %84
  %100 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %101 = call i32 @wsm_set_operational_mode(%struct.cw1200_common* %100, %struct.wsm_operational_mode* %21)
  %102 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %103 = call i32 @wsm_use_multi_tx_conf(%struct.cw1200_common* %102, i32 1)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %19, align 8
  %105 = call i32 @cw1200_register_common(%struct.ieee80211_hw* %104)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %9, align 4
  br label %120

111:                                              ; preds = %108, %95, %83
  %112 = load %struct.cw1200_common*, %struct.cw1200_common** %20, align 8
  %113 = call i32 @cw1200_unregister_bh(%struct.cw1200_common* %112)
  br label %114

114:                                              ; preds = %111, %77
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %19, align 8
  %116 = call i32 @cw1200_free_common(%struct.ieee80211_hw* %115)
  br label %117

117:                                              ; preds = %114, %32
  %118 = load %struct.cw1200_common**, %struct.cw1200_common*** %13, align 8
  store %struct.cw1200_common* null, %struct.cw1200_common** %118, align 8
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %109
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local %struct.ieee80211_hw* @cw1200_init_common(i32*, i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(i32, %struct.device*) #1

declare dso_local i32 @cw1200_register_bh(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_load_firmware(%struct.cw1200_common*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @wsm_set_operational_mode(%struct.cw1200_common*, %struct.wsm_operational_mode*) #1

declare dso_local i32 @wsm_use_multi_tx_conf(%struct.cw1200_common*, i32) #1

declare dso_local i32 @cw1200_register_common(%struct.ieee80211_hw*) #1

declare dso_local i32 @cw1200_unregister_bh(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_free_common(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
