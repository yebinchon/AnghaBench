; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_shwdt.c_sh_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.platform_device = type { i32, i32 }
%struct.sh_wdt = type { %struct.TYPE_8__, i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sh_wdt_dev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@WATCHDOG_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"heartbeat value must be 1<=x<=3600, using %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"configured with heartbeat=%d sec (nowayout=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't register watchdog (err=%d)\0A\00", align 1
@sh_wdt_ping = common dso_local global i32 0, align 4
@clock_division_ratio = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_wdt*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %114

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sh_wdt* @devm_kzalloc(i32* %15, i32 32, i32 %16)
  store %struct.sh_wdt* %17, %struct.sh_wdt** %4, align 8
  %18 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %19 = icmp ne %struct.sh_wdt* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %114

27:                                               ; preds = %13
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %31 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = call i32* @devm_clk_get(i32* %33, i32* null)
  %35 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %36 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %38 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %44 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %27
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %46, i32 0)
  %48 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %49 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %51 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %57 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %2, align 4
  br label %114

60:                                               ; preds = %45
  %61 = load i32, i32* @nowayout, align 4
  %62 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* @sh_wdt_dev, i32 %61)
  %63 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %64 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* @sh_wdt_dev, %struct.sh_wdt* %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 1
  store i32* %66, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sh_wdt_dev, i32 0, i32 1), align 8
  %67 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %68 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %67, i32 0, i32 1
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load i32, i32* @heartbeat, align 4
  %71 = call i32 @sh_wdt_set_heartbeat(%struct.TYPE_7__* @sh_wdt_dev, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load i32, i32* @WATCHDOG_HEARTBEAT, align 4
  %77 = call i32 @sh_wdt_set_heartbeat(%struct.TYPE_7__* @sh_wdt_dev, i32 %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sh_wdt_dev, i32 0, i32 0), align 8
  %81 = call i32 @dev_warn(i32* %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %75, %60
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 1
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sh_wdt_dev, i32 0, i32 0), align 8
  %86 = load i32, i32* @nowayout, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_info(i32* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  %88 = call i32 @watchdog_register_device(%struct.TYPE_7__* @sh_wdt_dev)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %114

98:                                               ; preds = %82
  %99 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %100 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %99, i32 0, i32 0
  %101 = load i32, i32* @sh_wdt_ping, align 4
  %102 = call i32 @timer_setup(%struct.TYPE_8__* %100, i32 %101, i32 0)
  %103 = load i32, i32* @clock_division_ratio, align 4
  %104 = call i32 @next_ping_period(i32 %103)
  %105 = load %struct.sh_wdt*, %struct.sh_wdt** %4, align 8
  %106 = getelementptr inbounds %struct.sh_wdt, %struct.sh_wdt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 1
  %110 = call i32 (i32*, i8*, ...) @dev_info(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = call i32 @pm_runtime_enable(i32* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %98, %92, %55, %24, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.sh_wdt* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.sh_wdt*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sh_wdt_set_heartbeat(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @next_ping_period(i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
