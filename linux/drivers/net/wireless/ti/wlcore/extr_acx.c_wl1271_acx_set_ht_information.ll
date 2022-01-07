; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_ht_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_ht_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_ht_information = type { i32, i64, i64, i64, i64, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"acx ht information setting\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@ACX_HT_BSS_OPERATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"acx ht information setting failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_set_ht_information(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_acx_ht_information*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl1271_acx_ht_information* @kzalloc(i32 48, i32 %11)
  store %struct.wl1271_acx_ht_information* %12, %struct.wl1271_acx_ht_information** %7, align 8
  %13 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %14 = icmp ne %struct.wl1271_acx_ht_information* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %23 = getelementptr inbounds %struct.wl1271_acx_ht_information, %struct.wl1271_acx_ht_information* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %29 = getelementptr inbounds %struct.wl1271_acx_ht_information, %struct.wl1271_acx_ht_information* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %31 = getelementptr inbounds %struct.wl1271_acx_ht_information, %struct.wl1271_acx_ht_information* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %40 = getelementptr inbounds %struct.wl1271_acx_ht_information, %struct.wl1271_acx_ht_information* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %42 = getelementptr inbounds %struct.wl1271_acx_ht_information, %struct.wl1271_acx_ht_information* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %44 = getelementptr inbounds %struct.wl1271_acx_ht_information, %struct.wl1271_acx_ht_information* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %46 = load i32, i32* @ACX_HT_BSS_OPERATION, align 4
  %47 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %48 = call i32 @wl1271_cmd_configure(%struct.wl1271* %45, i32 %46, %struct.wl1271_acx_ht_information* %47, i32 48)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %18
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @wl1271_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %55

54:                                               ; preds = %18
  br label %55

55:                                               ; preds = %54, %51, %15
  %56 = load %struct.wl1271_acx_ht_information*, %struct.wl1271_acx_ht_information** %7, align 8
  %57 = call i32 @kfree(%struct.wl1271_acx_ht_information* %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_ht_information* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_ht_information*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_ht_information*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
