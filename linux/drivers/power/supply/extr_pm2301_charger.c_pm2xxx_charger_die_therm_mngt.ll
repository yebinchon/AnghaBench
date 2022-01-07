; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_die_therm_mngt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_die_therm_mngt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm2xxx_charger*, i32)* @pm2xxx_charger_die_therm_mngt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_charger_die_therm_mngt(%struct.pm2xxx_charger* %0, i32 %1) #0 {
  %3 = alloca %struct.pm2xxx_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.pm2xxx_charger* %0, %struct.pm2xxx_charger** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %6 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %9 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %8, i32 0, i32 0
  %10 = call i32 @queue_work(i32 %7, i32* %9)
  ret i32 0
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
