; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_scan_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_scan_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BTC_SCAN_START = common dso_local global i64 0, align 8
@BTC_SCAN_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_scan_notify(%struct.btc_coexist* %0, i64 %1) #0 {
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
  br label %108

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
  br label %108

21:                                               ; preds = %10
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @BTC_SCAN_START, align 8
  store i64 %25, i64* %5, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @BTC_SCAN_FINISH, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %30 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %29)
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_HARDWARE_TYPE_8821(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %28
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ex_btc8821a2ant_scan_notify(%struct.btc_coexist* %43, i64 %44)
  br label %57

46:                                               ; preds = %36
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @ex_btc8821a1ant_scan_notify(%struct.btc_coexist* %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %42
  br label %105

58:                                               ; preds = %28
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @ex_btc8723b2ant_scan_notify(%struct.btc_coexist* %71, i64 %72)
  br label %85

74:                                               ; preds = %64
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %76 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @ex_btc8723b1ant_scan_notify(%struct.btc_coexist* %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %70
  br label %104

86:                                               ; preds = %58
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %94 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @ex_btc8192e2ant_scan_notify(%struct.btc_coexist* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %92
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %57
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %107 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %106)
  br label %108

108:                                              ; preds = %105, %20, %9
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_scan_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8821a1ant_scan_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_scan_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8723b1ant_scan_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_scan_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
