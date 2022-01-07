; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al2230.c_zd_rf_init_al2230.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_al2230.c_zd_rf_init_al2230.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32, i32, i32, i32, i32, i32 }
%struct.zd_chip = type { i32 }

@al2230_switch_radio_off = common dso_local global i32 0, align 4
@zd1211b_al2230_init_hw = common dso_local global i32 0, align 4
@zd1211b_al2230_set_channel = common dso_local global i32 0, align 4
@zd1211b_al2230_switch_radio_on = common dso_local global i32 0, align 4
@zd1211_al2230_init_hw = common dso_local global i32 0, align 4
@zd1211_al2230_set_channel = common dso_local global i32 0, align 4
@zd1211_al2230_switch_radio_on = common dso_local global i32 0, align 4
@zd_rf_generic_patch_6m = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rf_init_al2230(%struct.zd_rf* %0) #0 {
  %2 = alloca %struct.zd_rf*, align 8
  %3 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %2, align 8
  %4 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %5 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %4)
  store %struct.zd_chip* %5, %struct.zd_chip** %3, align 8
  %6 = load i32, i32* @al2230_switch_radio_off, align 4
  %7 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %8 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %10 = call i64 @zd_chip_is_zd1211b(%struct.zd_chip* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @zd1211b_al2230_init_hw, align 4
  %14 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %15 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @zd1211b_al2230_set_channel, align 4
  %17 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %18 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @zd1211b_al2230_switch_radio_on, align 4
  %20 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %21 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load i32, i32* @zd1211_al2230_init_hw, align 4
  %24 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %25 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @zd1211_al2230_set_channel, align 4
  %27 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %28 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @zd1211_al2230_switch_radio_on, align 4
  %30 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %31 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %12
  %33 = load i32, i32* @zd_rf_generic_patch_6m, align 4
  %34 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %35 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.zd_rf*, %struct.zd_rf** %2, align 8
  %37 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  ret i32 0
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i64 @zd_chip_is_zd1211b(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
