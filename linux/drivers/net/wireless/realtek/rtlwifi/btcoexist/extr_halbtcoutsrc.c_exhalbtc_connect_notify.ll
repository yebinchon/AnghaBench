; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_connect_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_connect_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, i32 (%struct.btc_coexist*, i32, i32*)*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@BTC_ASSOCIATE_START = common dso_local global i64 0, align 8
@BTC_ASSOCIATE_FINISH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_connect_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %8 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %115

11:                                               ; preds = %2
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %115

22:                                               ; preds = %11
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 2
  %25 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %24, align 8
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %28 = call i32 %25(%struct.btc_coexist* %26, i32 %27, i32* %6)
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  store i64 %32, i64* %5, align 8
  br label %35

33:                                               ; preds = %22
  %34 = load i64, i64* @BTC_ASSOCIATE_FINISH, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %36)
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_HARDWARE_TYPE_8821(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %35
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ex_btc8821a2ant_connect_notify(%struct.btc_coexist* %50, i64 %51)
  br label %64

53:                                               ; preds = %43
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %55 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @ex_btc8821a1ant_connect_notify(%struct.btc_coexist* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %49
  br label %112

65:                                               ; preds = %35
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %73 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ex_btc8723b2ant_connect_notify(%struct.btc_coexist* %78, i64 %79)
  br label %92

81:                                               ; preds = %71
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @ex_btc8723b1ant_connect_notify(%struct.btc_coexist* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %91, %77
  br label %111

93:                                               ; preds = %65
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %95 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @ex_btc8192e2ant_connect_notify(%struct.btc_coexist* %106, i64 %107)
  br label %109

109:                                              ; preds = %105, %99
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %64
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %114 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %113)
  br label %115

115:                                              ; preds = %112, %21, %10
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_connect_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8821a1ant_connect_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_connect_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8723b1ant_connect_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_connect_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
