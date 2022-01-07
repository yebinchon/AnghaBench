; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_pnp_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_pnp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_pnp_notify(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %6 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %74

9:                                                ; preds = %2
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ex_btc8723b1ant_pnp_notify(%struct.btc_coexist* %22, i32 %23)
  br label %36

25:                                               ; preds = %15
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ex_btc8723b2ant_pnp_notify(%struct.btc_coexist* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %21
  br label %74

37:                                               ; preds = %9
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_HARDWARE_TYPE_8821(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ex_btc8821a1ant_pnp_notify(%struct.btc_coexist* %50, i32 %51)
  br label %64

53:                                               ; preds = %43
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %55 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ex_btc8821a2ant_pnp_notify(%struct.btc_coexist* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %49
  br label %73

65:                                               ; preds = %37
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %65
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %8, %73, %36
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b1ant_pnp_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @ex_btc8723b2ant_pnp_notify(%struct.btc_coexist*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a1ant_pnp_notify(%struct.btc_coexist*, i32) #1

declare dso_local i32 @ex_btc8821a2ant_pnp_notify(%struct.btc_coexist*, i32) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
