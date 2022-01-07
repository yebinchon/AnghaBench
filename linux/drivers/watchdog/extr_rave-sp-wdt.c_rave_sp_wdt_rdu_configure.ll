; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rave-sp-wdt.c_rave_sp_wdt_rdu_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rave-sp-wdt.c_rave_sp_wdt_rdu_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@RAVE_SP_CMD_SW_WDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @rave_sp_wdt_rdu_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_wdt_rdu_configure(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @RAVE_SP_CMD_SW_WDT, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %13 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %17 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %15, align 4
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %22 = call i32 @rave_sp_wdt_exec(%struct.watchdog_device* %20, i32* %21, i32 20)
  ret i32 %22
}

declare dso_local i32 @rave_sp_wdt_exec(%struct.watchdog_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
