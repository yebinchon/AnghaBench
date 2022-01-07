; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_diag288_wdt.c_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_diag288_wdt.c_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@MAX_CMDLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wdt_cmd = common dso_local global i32 0, align 4
@conceal_on = common dso_local global i64 0, align 8
@WDT_FUNC_INIT = common dso_local global i32 0, align 4
@WDT_FUNC_CONCEAL = common dso_local global i32 0, align 4
@WDT_FUNC_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"The watchdog timer cannot be started or reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @MACHINE_IS_VM, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = load i32, i32* @MAX_CMDLEN, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @wdt_cmd, align 4
  %24 = load i32, i32* @MAX_CMDLEN, align 4
  %25 = call i64 @strlcpy(i8* %22, i32 %23, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @MAX_CMDLEN, align 4
  %28 = call i32 @ASCEBC(i8* %26, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @MAX_CMDLEN, align 4
  %31 = call i32 @EBC_TOUPPER(i8* %29, i32 %30)
  %32 = load i64, i64* @conceal_on, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @WDT_FUNC_INIT, align 4
  %36 = load i32, i32* @WDT_FUNC_CONCEAL, align 4
  %37 = or i32 %35, %36
  br label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @WDT_FUNC_INIT, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %44 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @__diag288_vm(i32 %42, i32 %45, i8* %46, i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @kfree(i8* %53)
  br label %61

55:                                               ; preds = %1
  %56 = load i32, i32* @WDT_FUNC_CHANGE, align 4
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__diag288_lpar(i32 %56, i32 %59, i32 0)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %55, %40
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @kmalloc(i32, i32) #1

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
