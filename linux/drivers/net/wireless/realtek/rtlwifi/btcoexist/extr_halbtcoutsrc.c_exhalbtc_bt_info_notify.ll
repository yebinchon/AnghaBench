; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_bt_info_notify(%struct.btc_coexist* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %8 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %101

11:                                               ; preds = %3
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %18 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %17)
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_HARDWARE_TYPE_8821(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %11
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %26 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ex_btc8821a2ant_bt_info_notify(%struct.btc_coexist* %31, i32* %32, i32 %33)
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ex_btc8821a1ant_bt_info_notify(%struct.btc_coexist* %42, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %46, %30
  br label %98

48:                                               ; preds = %11
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ex_btc8723b2ant_bt_info_notify(%struct.btc_coexist* %61, i32* %62, i32 %63)
  br label %77

65:                                               ; preds = %54
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ex_btc8723b1ant_bt_info_notify(%struct.btc_coexist* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %65
  br label %77

77:                                               ; preds = %76, %60
  br label %97

78:                                               ; preds = %48
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %80 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %86 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ex_btc8192e2ant_bt_info_notify(%struct.btc_coexist* %91, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %47
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %100 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %99)
  br label %101

101:                                              ; preds = %98, %10
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_bt_info_notify(%struct.btc_coexist*, i32*, i32) #1

declare dso_local i32 @ex_btc8821a1ant_bt_info_notify(%struct.btc_coexist*, i32*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_bt_info_notify(%struct.btc_coexist*, i32*, i32) #1

declare dso_local i32 @ex_btc8723b1ant_bt_info_notify(%struct.btc_coexist*, i32*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_bt_info_notify(%struct.btc_coexist*, i32*, i32) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
