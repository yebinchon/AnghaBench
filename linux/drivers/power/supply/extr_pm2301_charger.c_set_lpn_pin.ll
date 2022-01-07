; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_set_lpn_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_set_lpn_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SLEEP_MIN = common dso_local global i32 0, align 4
@SLEEP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm2xxx_charger*)* @set_lpn_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lpn_pin(%struct.pm2xxx_charger* %0) #0 {
  %2 = alloca %struct.pm2xxx_charger*, align 8
  store %struct.pm2xxx_charger* %0, %struct.pm2xxx_charger** %2, align 8
  %3 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %2, align 8
  %4 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %2, align 8
  %10 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @gpio_is_valid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %2, align 8
  %16 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_set_value(i32 %17, i32 1)
  %19 = load i32, i32* @SLEEP_MIN, align 4
  %20 = load i32, i32* @SLEEP_MAX, align 4
  %21 = call i32 @usleep_range(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %8, %1
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
