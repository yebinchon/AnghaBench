; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_write_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_write_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t }
%struct.dig_t = type { i32, i32, i32, i32 }

@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"DIG is disabled\0A\00", align 1
@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_dm_write_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = load i32, i32* @COMP_DIG, align 4
  %11 = load i32, i32* @DBG_LOUD, align 4
  %12 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %13 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %16 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %19 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %23 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @COMP_DIG, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 1
  store i32 23, i32* %32, align 4
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %35 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %38 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %44 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %45 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 127, i32 %46)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %50 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %51 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 127, i32 %52)
  %54 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %55 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %26, %41, %33
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
