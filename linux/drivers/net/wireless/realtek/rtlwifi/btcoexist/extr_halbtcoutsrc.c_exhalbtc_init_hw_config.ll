; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_init_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_init_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_init_hw_config(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %6 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %94

9:                                                ; preds = %2
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_HARDWARE_TYPE_8821(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %9
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %28 = call i32 @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist* %27)
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ex_btc8821a1ant_init_hwconfig(%struct.btc_coexist* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %26
  br label %94

41:                                               ; preds = %9
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %43 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %55 = call i32 @ex_btc8723b2ant_init_hwconfig(%struct.btc_coexist* %54)
  br label %67

56:                                               ; preds = %47
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %58 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ex_btc8723b1ant_init_hwconfig(%struct.btc_coexist* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %53
  br label %93

68:                                               ; preds = %41
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %70 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_HARDWARE_TYPE_8723A(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %92

75:                                               ; preds = %68
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %77 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %89 = call i32 @ex_btc8192e2ant_init_hwconfig(%struct.btc_coexist* %88)
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %74
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %8, %93, %40
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8821a1ant_init_hwconfig(%struct.btc_coexist*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_init_hwconfig(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8723b1ant_init_hwconfig(%struct.btc_coexist*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723A(i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_init_hwconfig(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
