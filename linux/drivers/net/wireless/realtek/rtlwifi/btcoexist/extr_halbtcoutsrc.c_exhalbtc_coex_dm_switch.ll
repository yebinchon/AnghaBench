; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_coex_dm_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_coex_dm_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32, %struct.TYPE_4__, %struct.rtl_priv*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BT_COEX_ANT_TYPE_DETECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_coex_dm_switch(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %4 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %5 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %4, i32 0, i32 2
  %6 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %17)
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 2
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %20, align 8
  %22 = call i64 @IS_HARDWARE_TYPE_8723B(%struct.rtl_priv* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %11
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = call i32 @ex_btc8723b1ant_coex_dm_reset(%struct.btc_coexist* %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @BT_COEX_ANT_TYPE_DETECTED, align 4
  %37 = call i32 @exhalbtc_set_ant_num(%struct.rtl_priv* %35, i32 %36, i32 2)
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %39 = call i32 @ex_btc8723b2ant_init_hwconfig(%struct.btc_coexist* %38)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = call i32 @ex_btc8723b2ant_init_coex_dm(%struct.btc_coexist* %40)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %30, %24
  br label %45

45:                                               ; preds = %44, %11
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %46)
  br label %48

48:                                               ; preds = %45, %10
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(%struct.rtl_priv*) #1

declare dso_local i32 @ex_btc8723b1ant_coex_dm_reset(%struct.btc_coexist*) #1

declare dso_local i32 @exhalbtc_set_ant_num(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @ex_btc8723b2ant_init_hwconfig(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8723b2ant_init_coex_dm(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
