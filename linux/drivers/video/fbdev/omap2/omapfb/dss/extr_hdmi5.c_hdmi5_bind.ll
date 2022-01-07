; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi5_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi5_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.device = type { i32 }

@hdmi = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hdmi_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"OMAP HDMI\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"HDMI IRQ request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Registering HDMI audio failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@hdmi_dump_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @hdmi5_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi5_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.platform_device* @to_platform_device(%struct.device* %11)
  store %struct.platform_device* %12, %struct.platform_device** %8, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %13, %struct.platform_device** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 6), align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %15, %struct.TYPE_9__* @hdmi)
  %17 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 5))
  %18 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 4))
  %19 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %26 = call i32 @hdmi_probe_of(%struct.platform_device* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %104

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = call i32 @hdmi_wp_init(%struct.platform_device* %33, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 1))
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %104

39:                                               ; preds = %32
  %40 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %41 = call i32 @hdmi_pll_init(%struct.platform_device* %40, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 0), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 1))
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %104

46:                                               ; preds = %39
  %47 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %48 = call i32 @hdmi_phy_init(%struct.platform_device* %47, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 3))
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %101

52:                                               ; preds = %46
  %53 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %54 = call i32 @hdmi5_core_init(%struct.platform_device* %53, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 2))
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %101

58:                                               ; preds = %52
  %59 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %60 = call i32 @platform_get_irq(%struct.platform_device* %59, i32 0)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %101

67:                                               ; preds = %58
  %68 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @hdmi_irq_handler, align 4
  %72 = load i32, i32* @IRQF_ONESHOT, align 4
  %73 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %69, i32 %70, i32* null, i32 %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 1))
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %101

78:                                               ; preds = %67
  %79 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %83 = call i32 @hdmi_init_output(%struct.platform_device* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @hdmi_audio_register(%struct.TYPE_8__* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %93 = call i32 @hdmi_uninit_output(%struct.platform_device* %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @pm_runtime_disable(%struct.TYPE_8__* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %104

98:                                               ; preds = %78
  %99 = load i32, i32* @hdmi_dump_regs, align 4
  %100 = call i32 @dss_debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  store i32 0, i32* %4, align 4
  br label %104

101:                                              ; preds = %76, %63, %57, %51
  %102 = call i32 @hdmi_pll_uninit(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 0))
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %98, %89, %44, %37, %29
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hdmi_probe_of(%struct.platform_device*) #1

declare dso_local i32 @hdmi_wp_init(%struct.platform_device*, i32*) #1

declare dso_local i32 @hdmi_pll_init(%struct.platform_device*, i32*, i32*) #1

declare dso_local i32 @hdmi_phy_init(%struct.platform_device*, i32*) #1

declare dso_local i32 @hdmi5_core_init(%struct.platform_device*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @hdmi_init_output(%struct.platform_device*) #1

declare dso_local i32 @hdmi_audio_register(%struct.TYPE_8__*) #1

declare dso_local i32 @hdmi_uninit_output(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_8__*) #1

declare dso_local i32 @dss_debugfs_create_file(i8*, i32) #1

declare dso_local i32 @hdmi_pll_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
