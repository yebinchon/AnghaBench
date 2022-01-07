; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ath79_wdt.c_ath79_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ath79_wdt.c_ath79_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@wdt_base = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@wdt_clk = common dso_local global i64 0, align 8
@wdt_freq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@max_timeout = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"timeout value must be 0 < timeout < %d, using %d\0A\00", align 1
@WDOG_REG_CTRL = common dso_local global i32 0, align 4
@WDOG_CTRL_LAST_RESET = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@boot_status = common dso_local global i32 0, align 4
@ath79_wdt_miscdev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to register misc device, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath79_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath79_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i64, i64* @wdt_base, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %88

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %12, i32 0)
  store i64 %13, i64* @wdt_base, align 8
  %14 = load i64, i64* @wdt_base, align 8
  %15 = call i64 @IS_ERR(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* @wdt_base, align 8
  %19 = call i32 @PTR_ERR(i64 %18)
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %11
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i64 @devm_clk_get(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %23, i64* @wdt_clk, align 8
  %24 = load i64, i64* @wdt_clk, align 8
  %25 = call i64 @IS_ERR(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* @wdt_clk, align 8
  %29 = call i32 @PTR_ERR(i64 %28)
  store i32 %29, i32* %2, align 4
  br label %88

30:                                               ; preds = %20
  %31 = load i64, i64* @wdt_clk, align 8
  %32 = call i32 @clk_prepare_enable(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %88

37:                                               ; preds = %30
  %38 = load i64, i64* @wdt_clk, align 8
  %39 = call i32 @clk_get_rate(i64 %38)
  store i32 %39, i32* @wdt_freq, align 4
  %40 = load i32, i32* @wdt_freq, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load i32, i32* @wdt_freq, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 4294967295, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* @max_timeout, align 4
  %50 = load i32, i32* @timeout, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @timeout, align 4
  %54 = load i32, i32* @max_timeout, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %45
  %57 = load i32, i32* @max_timeout, align 4
  store i32 %57, i32* @timeout, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* @max_timeout, align 4
  %61 = load i32, i32* @timeout, align 4
  %62 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* @WDOG_REG_CTRL, align 4
  %65 = call i32 @ath79_wdt_rr(i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @WDOG_CTRL_LAST_RESET, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @WDIOF_CARDRESET, align 4
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  store i32 %74, i32* @boot_status, align 4
  %75 = call i32 @misc_register(i32* @ath79_wdt_miscdev)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %84

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %88

84:                                               ; preds = %78, %42
  %85 = load i64, i64* @wdt_clk, align 8
  %86 = call i32 @clk_disable_unprepare(i64 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %83, %35, %27, %17, %8
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @ath79_wdt_rr(i32) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
