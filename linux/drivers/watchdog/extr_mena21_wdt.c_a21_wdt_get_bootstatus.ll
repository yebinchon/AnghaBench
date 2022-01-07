; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_get_bootstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_get_bootstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a21_wdt_drv = type { i32* }

@GPIO_WD_RST0 = common dso_local global i64 0, align 8
@GPIO_WD_RST1 = common dso_local global i64 0, align 8
@GPIO_WD_RST2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a21_wdt_drv*)* @a21_wdt_get_bootstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a21_wdt_get_bootstatus(%struct.a21_wdt_drv* %0) #0 {
  %2 = alloca %struct.a21_wdt_drv*, align 8
  %3 = alloca i32, align 4
  store %struct.a21_wdt_drv* %0, %struct.a21_wdt_drv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %2, align 8
  %5 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @GPIO_WD_RST0, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @gpiod_get_value(i32 %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %2, align 8
  %17 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @GPIO_WD_RST1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @gpiod_get_value(i32 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 0
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %2, align 8
  %29 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @GPIO_WD_RST2, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @gpiod_get_value(i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4, i32 0
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @gpiod_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
