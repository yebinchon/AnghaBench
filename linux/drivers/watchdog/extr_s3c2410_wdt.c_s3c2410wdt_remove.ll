; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c2410_wdt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c2410wdt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410wdt_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_wdt*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.s3c2410_wdt* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.s3c2410_wdt* %7, %struct.s3c2410_wdt** %5, align 8
  %8 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %9 = call i32 @s3c2410wdt_mask_and_disable_reset(%struct.s3c2410_wdt* %8, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %16 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %15, i32 0, i32 1
  %17 = call i32 @watchdog_unregister_device(i32* %16)
  %18 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %19 = call i32 @s3c2410wdt_cpufreq_deregister(%struct.s3c2410_wdt* %18)
  %20 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %21 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.s3c2410_wdt* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @s3c2410wdt_mask_and_disable_reset(%struct.s3c2410_wdt*, i32) #1

declare dso_local i32 @watchdog_unregister_device(i32*) #1

declare dso_local i32 @s3c2410wdt_cpufreq_deregister(%struct.s3c2410_wdt*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
