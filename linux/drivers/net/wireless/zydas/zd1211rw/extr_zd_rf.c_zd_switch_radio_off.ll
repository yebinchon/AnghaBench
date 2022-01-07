; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf.c_zd_switch_radio_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf.c_zd_switch_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { {}* }
%struct.zd_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_switch_radio_off(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %7 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %8 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %7)
  store %struct.zd_chip* %8, %struct.zd_chip** %6, align 8
  %9 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %10 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %9, i32 0, i32 0
  %11 = call i32 @mutex_is_locked(i32* %10)
  %12 = call i32 @ZD_ASSERT(i32 %11)
  %13 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %14 = call i32 @zd_chip_lock_phy_regs(%struct.zd_chip* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %21 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.zd_rf*)**
  %23 = load i32 (%struct.zd_rf*)*, i32 (%struct.zd_rf*)** %22, align 8
  %24 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %25 = call i32 %23(%struct.zd_rf* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %27 = call i32 @zd_chip_unlock_phy_regs(%struct.zd_chip* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_chip_lock_phy_regs(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_unlock_phy_regs(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
