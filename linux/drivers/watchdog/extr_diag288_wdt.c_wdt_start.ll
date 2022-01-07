; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_diag288_wdt.c_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_diag288_wdt.c_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@DIAG_WDOG_BUSY = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@MAX_CMDLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wdt_cmd = common dso_local global i32 0, align 4
@conceal_on = common dso_local global i64 0, align 8
@WDT_FUNC_INIT = common dso_local global i32 0, align 4
@WDT_FUNC_CONCEAL = common dso_local global i32 0, align 4
@LPARWDT_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"The watchdog cannot be activated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %8 = load i32, i32* @DIAG_WDOG_BUSY, align 4
  %9 = call i64 @test_and_set_bit(i32 %8, i32* @wdt_status)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* @MACHINE_IS_VM, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load i32, i32* @MAX_CMDLEN, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i32 %20, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @DIAG_WDOG_BUSY, align 4
  %27 = call i32 @clear_bit(i32 %26, i32* @wdt_status)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %80

30:                                               ; preds = %19
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @wdt_cmd, align 4
  %33 = load i32, i32* @MAX_CMDLEN, align 4
  %34 = call i64 @strlcpy(i8* %31, i32 %32, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @MAX_CMDLEN, align 4
  %37 = call i32 @ASCEBC(i8* %35, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @MAX_CMDLEN, align 4
  %40 = call i32 @EBC_TOUPPER(i8* %38, i32 %39)
  %41 = load i64, i64* @conceal_on, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @WDT_FUNC_INIT, align 4
  %45 = load i32, i32* @WDT_FUNC_CONCEAL, align 4
  %46 = or i32 %44, %45
  br label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @WDT_FUNC_INIT, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %46, %43 ], [ %48, %47 ]
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %53 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @__diag288_vm(i32 %51, i32 %54, i8* %55, i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @kfree(i8* %62)
  br label %71

64:                                               ; preds = %14
  %65 = load i32, i32* @WDT_FUNC_INIT, align 4
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %67 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LPARWDT_RESTART, align 4
  %70 = call i32 @__diag288_lpar(i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %64, %49
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @DIAG_WDOG_BUSY, align 4
  %77 = call i32 @clear_bit(i32 %76, i32* @wdt_status)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %74, %25, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @EBC_TOUPPER(i8*, i32) #1

declare dso_local i32 @__diag288_vm(i32, i32, i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @__diag288_lpar(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
