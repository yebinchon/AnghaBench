; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pnx4008_wdt.c_pnx4008_restart_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pnx4008_wdt.c_pnx4008_restart_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@REBOOT_HARD = common dso_local global i64 0, align 8
@REBOOT_SOFT = common dso_local global i64 0, align 8
@EXT_MATCH0 = common dso_local global i32 0, align 4
@wdt_base = common dso_local global i32 0, align 4
@M_RES1 = common dso_local global i32 0, align 4
@M_RES2 = common dso_local global i32 0, align 4
@RESFRC1 = common dso_local global i32 0, align 4
@RESFRC2 = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @pnx4008_restart_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx4008_restart_handler(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 104
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @REBOOT_HARD, align 8
  store i64 %18, i64* %5, align 8
  br label %28

19:                                               ; preds = %11
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 115
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @REBOOT_SOFT, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %19
  br label %28

28:                                               ; preds = %27, %17
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @REBOOT_SOFT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @EXT_MATCH0, align 4
  %35 = load i32, i32* @wdt_base, align 4
  %36 = call i32 @WDTIM_EMR(i32 %35)
  %37 = call i32 @writel(i32 %34, i32 %36)
  %38 = load i32, i32* @M_RES1, align 4
  %39 = load i32, i32* @wdt_base, align 4
  %40 = call i32 @WDTIM_MCTRL(i32 %39)
  %41 = call i32 @writel(i32 %38, i32 %40)
  br label %54

42:                                               ; preds = %29
  %43 = load i32, i32* @wdt_base, align 4
  %44 = call i32 @WDTIM_PULSE(i32 %43)
  %45 = call i32 @writel(i32 13000, i32 %44)
  %46 = load i32, i32* @M_RES2, align 4
  %47 = load i32, i32* @RESFRC1, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RESFRC2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @wdt_base, align 4
  %52 = call i32 @WDTIM_MCTRL(i32 %51)
  %53 = call i32 @writel(i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %42, %33
  %55 = call i32 @mdelay(i32 1000)
  %56 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %56
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @WDTIM_EMR(i32) #1

declare dso_local i32 @WDTIM_MCTRL(i32) #1

declare dso_local i32 @WDTIM_PULSE(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
