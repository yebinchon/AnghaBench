; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm47xx_wdt.c_bcm47xx_wdt_hard_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm47xx_wdt.c_bcm47xx_wdt_hard_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.bcm47xx_wdt = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"timeout value must be 1<=x<=%d, using %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @bcm47xx_wdt_hard_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xx_wdt_hard_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm47xx_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %9 = call %struct.bcm47xx_wdt* @bcm47xx_wdt_get(%struct.watchdog_device* %8)
  store %struct.bcm47xx_wdt* %9, %struct.bcm47xx_wdt** %6, align 8
  %10 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %11 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 1000
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 1000
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.bcm47xx_wdt* @bcm47xx_wdt_get(%struct.watchdog_device*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
