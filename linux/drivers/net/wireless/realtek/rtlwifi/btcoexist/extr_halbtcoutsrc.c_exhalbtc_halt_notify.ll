; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_halt_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_halt_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_halt_notify(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %3 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %4 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %80

7:                                                ; preds = %1
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IS_HARDWARE_TYPE_8821(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = call i32 @ex_btc8821a2ant_halt_notify(%struct.btc_coexist* %20)
  br label %32

22:                                               ; preds = %13
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = call i32 @ex_btc8821a1ant_halt_notify(%struct.btc_coexist* %29)
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %19
  br label %77

33:                                               ; preds = %7
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = call i32 @ex_btc8723b2ant_halt_notify(%struct.btc_coexist* %46)
  br label %58

48:                                               ; preds = %39
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = call i32 @ex_btc8723b1ant_halt_notify(%struct.btc_coexist* %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %45
  br label %76

59:                                               ; preds = %33
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %73 = call i32 @ex_btc8192e2ant_halt_notify(%struct.btc_coexist* %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %6
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_halt_notify(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8821a1ant_halt_notify(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_halt_notify(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8723b1ant_halt_notify(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_halt_notify(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
