; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sch311x_wdt.c_sch311x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }

@sch311x_wdt_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GP60 = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to request region 0x%04x-0x%04x.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@WDT_TIME_OUT = common dso_local global i32 0, align 4
@WDT_CTRL = common dso_local global i32 0, align 4
@WDT_CFG = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"timeout value must be 1<=x<=15300, using %d\0A\00", align 1
@sch311x_wdt_miscdev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot register miscdev on minor=%d (err=%d)\0A\00", align 1
@WATCHDOG_MINOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"SMSC SCH311x WDT initialized. timeout=%d sec (nowayout=%d)\0A\00", align 1
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch311x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch311x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 2))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %10 = load i32, i32* @GP60, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @DRV_NAME, align 4
  %13 = call i32 @request_region(i32 %11, i32 1, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %18 = load i32, i32* @GP60, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %21 = load i32, i32* @GP60, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %85

26:                                               ; preds = %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %28 = load i32, i32* @WDT_TIME_OUT, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @DRV_NAME, align 4
  %31 = call i32 @request_region(i32 %29, i32 4, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %36 = load i32, i32* @WDT_TIME_OUT, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %39 = load i32, i32* @WDT_CTRL, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %80

44:                                               ; preds = %26
  %45 = call i32 (...) @sch311x_wdt_stop()
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %47 = load i32, i32* @WDT_CFG, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @outb(i32 0, i32 %48)
  %50 = load i32, i32* @timeout, align 4
  %51 = call i64 @sch311x_wdt_set_heartbeat(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @WATCHDOG_TIMEOUT, align 4
  %55 = call i64 @sch311x_wdt_set_heartbeat(i32 %54)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* @timeout, align 4
  %58 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %44
  %60 = call i32 @sch311x_wdt_get_status(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 1))
  %61 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %61, %struct.device** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sch311x_wdt_miscdev, i32 0, i32 0), align 8
  %62 = call i32 @misc_register(%struct.TYPE_4__* @sch311x_wdt_miscdev)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* @WATCHDOG_MINOR, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load i32, i32* @timeout, align 4
  %73 = load i32, i32* @nowayout, align 4
  %74 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %71, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  store i32 0, i32* %2, align 4
  br label %87

75:                                               ; preds = %65
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %77 = load i32, i32* @WDT_TIME_OUT, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @release_region(i32 %78, i32 4)
  br label %80

80:                                               ; preds = %75, %33
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  %82 = load i32, i32* @GP60, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @release_region(i32 %83, i32 1)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch311x_wdt_data, i32 0, i32 0), align 4
  br label %85

85:                                               ; preds = %80, %15
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %70
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @sch311x_wdt_stop(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i64 @sch311x_wdt_set_heartbeat(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @sch311x_wdt_get_status(i32*) #1

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
