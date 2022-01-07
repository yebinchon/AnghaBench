; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_booke_wdt.c___booke_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_booke_wdt.c___booke_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@SPRN_TCR = common dso_local global i32 0, align 4
@WDTP_MASK = common dso_local global i32 0, align 4
@TCR_WIE = common dso_local global i32 0, align 4
@WRC_CHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__booke_wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__booke_wdt_enable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.watchdog_device*
  store %struct.watchdog_device* %6, %struct.watchdog_device** %4, align 8
  %7 = call i32 @__booke_wdt_ping(i32* null)
  %8 = load i32, i32* @SPRN_TCR, align 4
  %9 = call i32 @mfspr(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @WDTP_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @TCR_WIE, align 4
  %15 = load i32, i32* @WRC_CHIP, align 4
  %16 = call i32 @TCR_WRC(i32 %15)
  %17 = or i32 %14, %16
  %18 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %19 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sec_to_period(i32 %20)
  %22 = call i32 @WDTP(i32 %21)
  %23 = or i32 %17, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SPRN_TCR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mtspr(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @__booke_wdt_ping(i32*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @TCR_WRC(i32) #1

declare dso_local i32 @WDTP(i32) #1

declare dso_local i32 @sec_to_period(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
