; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_lps_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_lps_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EACTIVE = common dso_local global i64 0, align 8
@BTC_LPS_DISABLE = common dso_local global i64 0, align 8
@BTC_LPS_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_lps_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %104

10:                                               ; preds = %2
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %104

21:                                               ; preds = %10
  %22 = load i64, i64* @EACTIVE, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @BTC_LPS_DISABLE, align 8
  store i64 %26, i64* %5, align 8
  br label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @BTC_LPS_ENABLE, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_HARDWARE_TYPE_8821(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ex_btc8821a2ant_lps_notify(%struct.btc_coexist* %42, i64 %43)
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @ex_btc8821a1ant_lps_notify(%struct.btc_coexist* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %41
  br label %104

57:                                               ; preds = %29
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %65 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @ex_btc8723b2ant_lps_notify(%struct.btc_coexist* %70, i64 %71)
  br label %84

73:                                               ; preds = %63
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @ex_btc8723b1ant_lps_notify(%struct.btc_coexist* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %69
  br label %103

85:                                               ; preds = %57
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %87 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %93 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @ex_btc8192e2ant_lps_notify(%struct.btc_coexist* %98, i64 %99)
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102, %84
  br label %104

104:                                              ; preds = %9, %20, %103, %56
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_lps_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8821a1ant_lps_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_lps_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8723b1ant_lps_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_lps_notify(%struct.btc_coexist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
