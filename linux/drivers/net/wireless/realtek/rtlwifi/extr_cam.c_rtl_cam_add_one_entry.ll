; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_add_one_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_add_one_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"EntryNo:%x, ulKeyId=%x, ulEncAlg=%x, ulUseDK=%x MacAddr %pM\0A\00", align 1
@TOTAL_CAM_ENTRY = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ulKeyId exceed!\0A\00", align 1
@CFG_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %17, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %21 = load i32, i32* @COMP_SEC, align 4
  %22 = load i32, i32* @DBG_DMESG, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @TOTAL_CAM_ENTRY, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %7
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %34 = load i32, i32* @COMP_ERR, align 4
  %35 = load i32, i32* @DBG_WARNING, align 4
  %36 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %63

37:                                               ; preds = %7
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @CFG_VALID, align 4
  %42 = load i32, i32* %13, align 4
  %43 = shl i32 %42, 2
  %44 = or i32 %41, %43
  store i32 %44, i32* %16, align 4
  br label %52

45:                                               ; preds = %37
  %46 = load i32, i32* @CFG_VALID, align 4
  %47 = load i32, i32* %13, align 4
  %48 = shl i32 %47, 2
  %49 = or i32 %46, %48
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @rtl_cam_program_entry(%struct.ieee80211_hw* %53, i32 %54, i32* %55, i32* %56, i32 %57)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  %60 = load i32, i32* @COMP_SEC, align 4
  %61 = load i32, i32* @DBG_DMESG, align 4
  %62 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %52, %32
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_cam_program_entry(%struct.ieee80211_hw*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
