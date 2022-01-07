; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_itv_pwr_plug_mngt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_itv_pwr_plug_mngt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm2xxx_charger*, i32)* @pm2xxx_charger_itv_pwr_plug_mngt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_charger_itv_pwr_plug_mngt(%struct.pm2xxx_charger* %0, i32 %1) #0 {
  %3 = alloca %struct.pm2xxx_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pm2xxx_charger* %0, %struct.pm2xxx_charger** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %8 = call i32 @pm2xxx_charger_detection(%struct.pm2xxx_charger* %7, i64* %6)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %16 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %19 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %21 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %24 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %23, i32 0, i32 1
  %25 = call i32 @queue_work(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %14, %11, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @pm2xxx_charger_detection(%struct.pm2xxx_charger*, i64*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
