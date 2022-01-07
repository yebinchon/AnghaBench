; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_pre_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_pre_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_pre_load_firmware(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %3 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %4 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %28

7:                                                ; preds = %1
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = call i32 @ex_btc8723b2ant_pre_load_firmware(%struct.btc_coexist* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %6, %27, %7
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_pre_load_firmware(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
