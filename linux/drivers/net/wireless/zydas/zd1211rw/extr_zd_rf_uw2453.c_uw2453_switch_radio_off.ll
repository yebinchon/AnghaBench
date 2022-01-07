; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_uw2453.c_uw2453_switch_radio_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_rf_uw2453.c_uw2453_switch_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }

@uw2453_switch_radio_off.ioreqs = internal constant [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 129, i32 4 }, %struct.zd_ioreq16 { i32 128, i32 47 }], align 16
@RF_RV_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*)* @uw2453_switch_radio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uw2453_switch_radio_off(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %6 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %7 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %6)
  store %struct.zd_chip* %7, %struct.zd_chip** %5, align 8
  %8 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %9 = call i32 @UW2453_REGWRITE(i32 0, i32 155536)
  %10 = load i32, i32* @RF_RV_BITS, align 4
  %11 = call i32 @zd_rfwrite_locked(%struct.zd_chip* %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* @uw2453_switch_radio_off.ioreqs, i64 0, i64 0))
  %19 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %17, %struct.zd_ioreq16* getelementptr inbounds ([2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* @uw2453_switch_radio_off.ioreqs, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_rfwrite_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @UW2453_REGWRITE(i32, i32) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
