; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.iTCO_wdt_private = type { i32, i32, i32, i64 (i32, i32)*, i32 }

@.str = private unnamed_addr constant [66 x i8] c"failed to reset NO_REBOOT flag, reboot disabled by hardware/BIOS\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @iTCO_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.iTCO_wdt_private*, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.iTCO_wdt_private* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.iTCO_wdt_private* %7, %struct.iTCO_wdt_private** %4, align 8
  %8 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %9 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %12 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iTCO_vendor_pre_start(i32 %13, i32 %16)
  %18 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %19 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %18, i32 0, i32 3
  %20 = load i64 (i32, i32)*, i64 (i32, i32)** %19, align 8
  %21 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %22 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 %20(i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %28 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %73

33:                                               ; preds = %1
  %34 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %35 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %40 = call i32 @TCO_RLD(%struct.iTCO_wdt_private* %39)
  %41 = call i32 @outw(i32 1, i32 %40)
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %44 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %49 = call i32 @TCO_RLD(%struct.iTCO_wdt_private* %48)
  %50 = call i32 @outb(i32 1, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %54 = call i32 @TCO1_CNT(%struct.iTCO_wdt_private* %53)
  %55 = call i32 @inw(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 63487
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %60 = call i32 @TCO1_CNT(%struct.iTCO_wdt_private* %59)
  %61 = call i32 @outw(i32 %58, i32 %60)
  %62 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %63 = call i32 @TCO1_CNT(%struct.iTCO_wdt_private* %62)
  %64 = call i32 @inw(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.iTCO_wdt_private*, %struct.iTCO_wdt_private** %4, align 8
  %66 = getelementptr inbounds %struct.iTCO_wdt_private, %struct.iTCO_wdt_private* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 2048
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %73

72:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %71, %26
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.iTCO_wdt_private* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iTCO_vendor_pre_start(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @TCO_RLD(%struct.iTCO_wdt_private*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @TCO1_CNT(%struct.iTCO_wdt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
