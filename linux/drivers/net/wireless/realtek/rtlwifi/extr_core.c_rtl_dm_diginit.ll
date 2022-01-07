; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_dm_diginit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_dm_diginit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32 }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i32, i32 }

@DIG_EXT_PORT_STAGE_MAX = common dso_local global i32 0, align 4
@DIG_STA_DISCONNECT = common dso_local global i8* null, align 8
@DIG_MULTISTA_DISCONNECT = common dso_local global i32 0, align 4
@DM_DIG_THRESH_LOW = common dso_local global i32 0, align 4
@DM_DIG_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_FALSEALARM_THRESH_LOW = common dso_local global i32 0, align 4
@DM_FALSEALARM_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_DIG_MAX = common dso_local global i32 0, align 4
@DM_DIG_MIN = common dso_local global i8* null, align 8
@DM_DIG_BACKOFF_DEFAULT = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_MAX = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_MIN = common dso_local global i32 0, align 4
@CCK_PD_STAGE_MAX = common dso_local global i32 0, align 4
@CCK_PD_STAGE_LOWRSSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_dm_diginit(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  store %struct.dig_t* %10, %struct.dig_t** %6, align 8
  %11 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %12 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @DIG_EXT_PORT_STAGE_MAX, align 4
  %14 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %15 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %14, i32 0, i32 29
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %18 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %17, i32 0, i32 28
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %20 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %19, i32 0, i32 27
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** @DIG_STA_DISCONNECT, align 8
  %22 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %23 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %22, i32 0, i32 26
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @DIG_STA_DISCONNECT, align 8
  %25 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %26 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %25, i32 0, i32 25
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @DIG_MULTISTA_DISCONNECT, align 4
  %28 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %29 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %28, i32 0, i32 24
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DM_DIG_THRESH_LOW, align 4
  %31 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 23
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @DM_DIG_THRESH_HIGH, align 4
  %34 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %35 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %34, i32 0, i32 22
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @DM_FALSEALARM_THRESH_LOW, align 4
  %37 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %38 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %37, i32 0, i32 21
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @DM_FALSEALARM_THRESH_HIGH, align 4
  %40 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %41 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %40, i32 0, i32 20
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DM_DIG_MAX, align 4
  %43 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %44 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @DM_DIG_MIN, align 8
  %46 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %47 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %46, i32 0, i32 18
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @DM_DIG_BACKOFF_DEFAULT, align 4
  %49 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %50 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %49, i32 0, i32 17
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @DM_DIG_BACKOFF_MAX, align 4
  %52 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %53 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %52, i32 0, i32 16
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DM_DIG_BACKOFF_MIN, align 4
  %55 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %56 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %55, i32 0, i32 15
  store i32 %54, i32* %56, align 8
  %57 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 1
  store i32 255, i32* %58, align 4
  %59 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %60 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %59, i32 0, i32 2
  store i32 131, i32* %60, align 8
  %61 = load i8*, i8** @DM_DIG_MIN, align 8
  %62 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %63 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %62, i32 0, i32 14
  store i8* %61, i8** %63, align 8
  %64 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %65 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %64, i32 0, i32 13
  store i64 0, i64* %65, align 8
  %66 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %67 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %66, i32 0, i32 12
  store i64 0, i64* %67, align 8
  %68 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 3
  store i32 37, i32* %69, align 4
  %70 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %71 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %70, i32 0, i32 4
  store i32 37, i32* %71, align 8
  %72 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %73 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %72, i32 0, i32 5
  store i32 0, i32* %73, align 4
  %74 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %75 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %74, i32 0, i32 6
  store i32 0, i32* %75, align 8
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %80 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %79, i32 0, i32 7
  store i32 50, i32* %80, align 4
  %81 = load i32, i32* @CCK_PD_STAGE_MAX, align 4
  %82 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %83 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @CCK_PD_STAGE_LOWRSSI, align 4
  %85 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %86 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 8
  %87 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %88 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %90 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
