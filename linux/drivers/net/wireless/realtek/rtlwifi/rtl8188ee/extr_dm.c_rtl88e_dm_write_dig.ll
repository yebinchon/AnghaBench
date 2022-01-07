; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_write_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_write_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t }
%struct.dig_t = type { i32, i32, i32 }

@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cur_igvalue = 0x%x, pre_igvalue = 0x%x, backoff_val = %d\0A\00", align 1
@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88e_dm_write_dig(%struct.ieee80211_hw* %0) #0 {
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
  %19 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %23 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 63
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %28 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %27, i32 0, i32 0
  store i32 63, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %40 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %41 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %38, i32 %39, i32 127, i32 %42)
  %44 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %45 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %48 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %37, %29
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
