; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.da9063 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Watchdog failed to stop (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @da9063_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.da9063*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.da9063* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.da9063* %6, %struct.da9063** %3, align 8
  %7 = load %struct.da9063*, %struct.da9063** %3, align 8
  %8 = call i32 @da9063_wdt_disable_timer(%struct.da9063* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.da9063*, %struct.da9063** %3, align 8
  %13 = getelementptr inbounds %struct.da9063, %struct.da9063* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_alert(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local %struct.da9063* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @da9063_wdt_disable_timer(%struct.da9063*) #1

declare dso_local i32 @dev_alert(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
