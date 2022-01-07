; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_uw2453.c_uw2453_set_tx_gain_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_uw2453.c_uw2453_set_tx_gain_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i64* }

@uw2453_txgain = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"can't configure TX gain for int value %x on channel %d\0A\00", align 1
@RF_RV_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32)* @uw2453_set_tx_gain_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uw2453_set_tx_gain_level(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.zd_chip* %0, %struct.zd_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %8 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32*, i32** @uw2453_txgain, align 8
  %17 = call i64 @ARRAY_SIZE(i32* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %21 = call i32 @zd_chip_dev(%struct.zd_chip* %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_dbg_f(i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %27 = load i32*, i32** @uw2453_txgain, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @UW2453_REGWRITE(i32 7, i32 %30)
  %32 = load i32, i32* @RF_RV_BITS, align 4
  %33 = call i32 @zd_rfwrite_locked(%struct.zd_chip* %26, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i64, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_rfwrite_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @UW2453_REGWRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
