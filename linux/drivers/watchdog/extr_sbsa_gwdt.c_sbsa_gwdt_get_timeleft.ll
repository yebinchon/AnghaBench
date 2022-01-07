; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbsa_gwdt.c_sbsa_gwdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbsa_gwdt.c_sbsa_gwdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sbsa_gwdt = type { i32, i64 }

@action = common dso_local global i32 0, align 4
@SBSA_GWDT_WCS = common dso_local global i64 0, align 8
@SBSA_GWDT_WCS_WS0 = common dso_local global i32 0, align 4
@SBSA_GWDT_WOR = common dso_local global i64 0, align 8
@SBSA_GWDT_WCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @sbsa_gwdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsa_gwdt_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sbsa_gwdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.sbsa_gwdt* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.sbsa_gwdt* %6, %struct.sbsa_gwdt** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @action, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %3, align 8
  %11 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SBSA_GWDT_WCS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load i32, i32* @SBSA_GWDT_WCS_WS0, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %9
  %20 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %3, align 8
  %21 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SBSA_GWDT_WOR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %9, %1
  %29 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %3, align 8
  %30 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SBSA_GWDT_WCV, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @lo_hi_readq(i64 %33)
  %35 = call i64 (...) @arch_timer_read_counter()
  %36 = sub nsw i64 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sbsa_gwdt*, %struct.sbsa_gwdt** %3, align 8
  %43 = getelementptr inbounds %struct.sbsa_gwdt, %struct.sbsa_gwdt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @do_div(i32 %41, i32 %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.sbsa_gwdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @lo_hi_readq(i64) #1

declare dso_local i64 @arch_timer_read_counter(...) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
