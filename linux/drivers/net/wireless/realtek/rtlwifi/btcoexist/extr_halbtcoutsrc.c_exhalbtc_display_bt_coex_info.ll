; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_display_bt_coex_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_display_bt_coex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_display_bt_coex_info(%struct.btc_coexist* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.seq_file*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %6 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %89

9:                                                ; preds = %2
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %10)
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_HARDWARE_TYPE_8821(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %9
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = call i32 @ex_btc8821a2ant_display_coex_info(%struct.btc_coexist* %24, %struct.seq_file* %25)
  br label %38

27:                                               ; preds = %17
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = call i32 @ex_btc8821a1ant_display_coex_info(%struct.btc_coexist* %34, %struct.seq_file* %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %23
  br label %86

39:                                               ; preds = %9
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = call i32 @ex_btc8723b2ant_display_coex_info(%struct.btc_coexist* %52, %struct.seq_file* %53)
  br label %66

55:                                               ; preds = %45
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = call i32 @ex_btc8723b1ant_display_coex_info(%struct.btc_coexist* %62, %struct.seq_file* %63)
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %51
  br label %85

67:                                               ; preds = %39
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 @ex_btc8192e2ant_display_coex_info(%struct.btc_coexist* %80, %struct.seq_file* %81)
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %38
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %87)
  br label %89

89:                                               ; preds = %86, %8
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_display_coex_info(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i32 @ex_btc8821a1ant_display_coex_info(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_display_coex_info(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i32 @ex_btc8723b1ant_display_coex_info(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_display_coex_info(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
