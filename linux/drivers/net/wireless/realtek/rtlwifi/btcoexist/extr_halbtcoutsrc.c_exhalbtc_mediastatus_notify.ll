; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_mediastatus_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_mediastatus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RT_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_CONNECT = common dso_local global i32 0, align 4
@BTC_MEDIA_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_mediastatus_notify(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %109

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
  br label %109

21:                                               ; preds = %10
  %22 = load i32, i32* @RT_MEDIA_CONNECT, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @BTC_MEDIA_CONNECT, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @BTC_MEDIA_DISCONNECT, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %30)
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_HARDWARE_TYPE_8821(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ex_btc8821a2ant_media_status_notify(%struct.btc_coexist* %44, i32 %45)
  br label %58

47:                                               ; preds = %37
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ex_btc8821a1ant_media_status_notify(%struct.btc_coexist* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  br label %58

58:                                               ; preds = %57, %43
  br label %106

59:                                               ; preds = %29
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ex_btc8723b2ant_media_status_notify(%struct.btc_coexist* %72, i32 %73)
  br label %86

75:                                               ; preds = %65
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ex_btc8723b1ant_media_status_notify(%struct.btc_coexist* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %85, %71
  br label %105

87:                                               ; preds = %59
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %89 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %95 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ex_btc8192e2ant_media_status_notify(%struct.btc_coexist* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %58
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %107)
  br label %109

109:                                              ; preds = %106, %20, %9
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @ex_btc8821a1ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @ex_btc8723b1ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_media_status_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
