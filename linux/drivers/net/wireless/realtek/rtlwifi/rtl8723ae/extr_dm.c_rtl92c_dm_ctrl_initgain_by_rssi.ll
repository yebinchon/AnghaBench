; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl92c_dm_ctrl_initgain_by_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl92c_dm_ctrl_initgain_by_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64 }
%struct.dig_t = type { i64, i32, i32, i64, i32, i32, i32, i32, i32 }

@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rssi_val_min = %x back_val %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_ctrl_initgain_by_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_ctrl_initgain_by_rssi(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 1
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %14 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %19 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 2
  %22 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %23 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %28 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %37

32:                                               ; preds = %17
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 2
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %32, %26
  br label %69

38:                                               ; preds = %1
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %44 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %49 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 2
  %52 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %53 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %61 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %67

62:                                               ; preds = %47
  %63 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %64 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %38
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %71 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 10
  %74 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %75 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %79 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %69
  %83 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %84 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %87 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  br label %119

88:                                               ; preds = %69
  %89 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %90 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 10
  %93 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %94 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %92, %95
  %97 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %98 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %103 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %106 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  br label %118

107:                                              ; preds = %88
  %108 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %109 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 10
  %112 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %113 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %111, %114
  %116 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %117 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %107, %101
  br label %119

119:                                              ; preds = %118, %82
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = load i32, i32* @COMP_DIG, align 4
  %122 = load i32, i32* @DBG_TRACE, align 4
  %123 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %124 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %127 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @RT_TRACE(%struct.rtl_priv* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %128)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = call i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw* %130)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl8723e_dm_write_dig(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
