; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_is_charger_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_is_charger_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_charger = type { i32 }

@LP8788_CHG_STATUS = common dso_local global i32 0, align 4
@LP8788_CHG_INPUT_STATE_M = common dso_local global i32 0, align 4
@LP8788_SYSTEM_SUPPLY = common dso_local global i32 0, align 4
@LP8788_FULL_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_charger*)* @lp8788_is_charger_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_is_charger_detected(%struct.lp8788_charger* %0) #0 {
  %2 = alloca %struct.lp8788_charger*, align 8
  %3 = alloca i32, align 4
  store %struct.lp8788_charger* %0, %struct.lp8788_charger** %2, align 8
  %4 = load %struct.lp8788_charger*, %struct.lp8788_charger** %2, align 8
  %5 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LP8788_CHG_STATUS, align 4
  %8 = call i32 @lp8788_read_byte(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* @LP8788_CHG_INPUT_STATE_M, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @LP8788_SYSTEM_SUPPLY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @LP8788_FULL_FUNCTION, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ true, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
