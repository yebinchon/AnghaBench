; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_ap_init_hwenc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_ap_init_hwenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.wl1271_ap_key** }
%struct.wl1271_ap_key = type { i64, i64, i32, i32, i32, i32, i32 }

@MAX_NUM_KEYS = common dso_local global i32 0, align 4
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@KEY_ADD_OR_REPLACE = common dso_local global i32 0, align 4
@KEY_WEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl1271_ap_init_hwenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_ap_init_hwenc(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_ap_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %80, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_NUM_KEYS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.wl1271_ap_key**, %struct.wl1271_ap_key*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %18, i64 %20
  %22 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %21, align 8
  %23 = icmp eq %struct.wl1271_ap_key* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %83

25:                                               ; preds = %14
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.wl1271_ap_key**, %struct.wl1271_ap_key*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %29, i64 %31
  %33 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %32, align 8
  store %struct.wl1271_ap_key* %33, %struct.wl1271_ap_key** %7, align 8
  %34 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %35 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %42 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %40, %25
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %48 = load i32, i32* @KEY_ADD_OR_REPLACE, align 4
  %49 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %50 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %53 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %56 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %59 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %63 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %66 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wl1271_cmd_set_ap_key(%struct.wl1271* %46, %struct.wl12xx_vif* %47, i32 %48, i32 %51, i64 %54, i32 %57, i32 %60, i64 %61, i32 %64, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %101

72:                                               ; preds = %45
  %73 = load %struct.wl1271_ap_key*, %struct.wl1271_ap_key** %7, align 8
  %74 = getelementptr inbounds %struct.wl1271_ap_key, %struct.wl1271_ap_key* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KEY_WEP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %10

83:                                               ; preds = %24, %10
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %88 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %89 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %92 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @wl12xx_cmd_set_default_wep_key(%struct.wl1271* %87, i32 %90, i64 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %101

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %98, %71
  %102 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %103 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %104 = call i32 @wl1271_free_ap_keys(%struct.wl1271* %102, %struct.wl12xx_vif* %103)
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @wl1271_cmd_set_ap_key(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @wl12xx_cmd_set_default_wep_key(%struct.wl1271*, i32, i64) #1

declare dso_local i32 @wl1271_free_ap_keys(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
