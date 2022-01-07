; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_cck_packet_detection_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_cck_packet_detection_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.dig_t }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dig_t = type { i32, i32, i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@ODM_REG_CCK_CCA_11AC = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CCK cca thresh hold =%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_cck_packet_detection_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 2
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAC80211_LINKED, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %18 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 25
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 205, i32* %5, align 4
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %24 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %29 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 131, i32* %5, align 4
  br label %42

33:                                               ; preds = %27, %22
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1000
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 131, i32* %5, align 4
  br label %41

40:                                               ; preds = %33
  store i32 64, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %32
  br label %43

43:                                               ; preds = %42, %21
  br label %53

44:                                               ; preds = %1
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1000
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 131, i32* %5, align 4
  br label %52

51:                                               ; preds = %44
  store i32 64, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %43
  %54 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %55 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = load i32, i32* @ODM_REG_CCK_CCA_11AC, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @rtl_write_byte(%struct.rtl_priv* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %72 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = load i32, i32* @COMP_DIG, align 4
  %75 = load i32, i32* @DBG_TRACE, align 4
  %76 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %77 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RT_TRACE(%struct.rtl_priv* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %78)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
