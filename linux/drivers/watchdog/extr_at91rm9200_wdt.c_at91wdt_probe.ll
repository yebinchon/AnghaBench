; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91rm9200_wdt.c_at91wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91rm9200_wdt.c_at91wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32, %struct.device* }
%struct.platform_device = type { %struct.device }

@at91wdt_miscdev = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no parent\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@regmap_st = common dso_local global i32 0, align 4
@at91rm9200_restart_nb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to register restart handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"AT91 Watchdog Timer enabled (%d seconds%s)\0A\00", align 1
@wdt_time = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @at91wdt_miscdev, i32 0, i32 0), align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @at91wdt_miscdev, i32 0, i32 0), align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %14
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @syscon_node_to_regmap(i32 %30)
  store i32 %31, i32* @regmap_st, align 4
  %32 = load i32, i32* @regmap_st, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %27
  %39 = call i32 @misc_register(%struct.TYPE_3__* @at91wdt_miscdev)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %38
  %45 = call i32 @register_restart_handler(i32* @at91rm9200_restart_nb)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* @wdt_time, align 4
  %53 = load i64, i64* @nowayout, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %42, %35, %22, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_3__*) #1

declare dso_local i32 @register_restart_handler(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
